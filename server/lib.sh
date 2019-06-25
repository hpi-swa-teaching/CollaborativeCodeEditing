################################################################################
# This file is heavily inspired by smalltalkCI's Squeak support
################################################################################

set -o errexit
set -o errtrace
set -o pipefail
set -o nounset
# set -o xtrace

readonly PATH_HOME="$(pwd)"
readonly PATH_CACHE="${PATH_HOME}/_cache"
readonly PATH_BUILD="${PATH_HOME}/build"
readonly PATH_IMAGE="${PATH_BUILD}/Squeak.image"
readonly PATH_CHANGES="${PATH_BUILD}/Squeak.changes"
readonly PATH_VMS="${PATH_CACHE}/vms"
readonly PATH_VM="${PATH_BUILD}/vm"

readonly GITHUB_REPO_URL="https://github.com/hpi-swa/smalltalkCI"
readonly BASE_DOWNLOAD="${GITHUB_REPO_URL}/releases/download"
readonly BASE_DOWNLOAD_VM="${BASE_DOWNLOAD}/v2.8.4"
readonly OSVM_VERSION="201810190412"

download_file() {
  local url=$1
  local target=$2

  wget -q -O "${target}" "${url}"
}

extract_file() {
  local path=$1
  local target=$2

  tar xzf "${path}" -C "${target}"
}

is_spur_image() {
  local image_path=$1
  local image_format_number
  # "[...] bit 5 of the format number identifies an image that requires Spur
  # support from the VM [...]"
  # http://forum.world.st/VM-Maker-ImageFormat-dtl-17-mcz-td4713569.html
  local spur_bit=5

  image_format_number="$(hexdump -n 4 -e '2/4 "%04d " "\n"' "${image_path}")"
  [[ $((image_format_number>>(spur_bit-1) & 1)) -eq 1 ]]
}

return_vars() {
  (IFS="|"; echo "$*")
}

set_vars() {
  local variables=(${@:1:(($# - 1))})
  local values="${!#}"

  IFS="|" read -r "${variables[@]}" <<< "${values}"
}

initialize() {
  mkdir -p "${PATH_CACHE}"
  mkdir -p "${PATH_BUILD}"
  mkdir -p "${PATH_VMS}"
}

################################################################################
# Download image and extract it.
################################################################################
download_image() {
  local download_name="Squeak64-5.2.tar.gz"
  local git_tag="v2.8.4"
  # 32: local download_name="Squeak-5.2.tar.gz"
  # 32: local git_tag="v2.8.3"
  local target="${PATH_CACHE}/${download_name}"

  printf "Downloading image...\n"

  download_file "${BASE_DOWNLOAD}/${git_tag}/${download_name}" "${target}"
  extract_file "${target}" "${PATH_BUILD}"

  mv "${PATH_BUILD}"/*.image "${PATH_IMAGE}"
  mv "${PATH_BUILD}"/*.changes "${PATH_CHANGES}"
}

################################################################################
# Get vm filename and path according to build environment. Exit with '1' if
# environment is not supported.
# Arguments:
#   require_spur: '1' for Spur support
# Prints:
#   'vm_filename|vm_path' string
################################################################################
get_vm_details() {
  local require_spur=$1
  local vm_arch="linux64x64_itimer"
  # 32: local vm_arch="linux32x86_itimer"
  local vm_file_ext="tar.gz"
  local vm_filename
  local vm_path

  if [[ "${require_spur}" -eq 1 ]]; then
    vm_path="${PATH_VMS}/sqcogspur64linux/squeak"
    # 32: vm_path="${PATH_VMS}/sqcogspurlinux/squeak"
    vm_filename="squeak.cog.spur_${vm_arch}_${OSVM_VERSION}.${vm_file_ext}"
  else
    vm_path="${PATH_VMS}/sqcoglinux/squeak"
    vm_filename="squeak.cog.v3_${vm_arch}_${OSVM_VERSION}.${vm_file_ext}"
  fi

  return_vars "${vm_filename}" "${vm_path}"
}

################################################################################
# Download and extract vm if necessary.
################################################################################
prepare_vm() {
  local require_spur=0
  local vm_details
  local vm_filename
  local vm_path
  local download_url
  local target

  printf "Preparing VM...\n"

  is_spur_image "${PATH_IMAGE}" && require_spur=1
  vm_details=$(get_vm_details "${require_spur}")
  set_vars vm_filename vm_path "${vm_details}"
  download_url="${BASE_DOWNLOAD_VM}/${vm_filename}"
  target="${PATH_CACHE}/${vm_filename}"

  download_file "${download_url}" "${target}"

  extract_file "${target}" "${PATH_VMS}"
  chmod +x "${vm_path}"

  echo "${vm_path} \"\$@\"" > "${PATH_VM}"
  chmod +x "${PATH_VM}"

  "${PATH_VM}" -version
}

################################################################################
# Return vm flags as string.
################################################################################
determine_vm_flags() {
  echo "-nosound -vm-display-null"
}

################################################################################
# Run a .st script located in $SMALLTALK_CI_BUILD
################################################################################
run_script() {
  local script=$1
  local vm_flags="$(determine_vm_flags)"

  printf "Running ${script}...\n"

  script="${PATH_BUILD}/${script}"

  "${PATH_VM}" ${vm_flags} "${PATH_IMAGE}" "${script}"
}
