call_privileged_api() {
  local user=$1
  local password=$2
  local url=$3

  curl -u ${user}:${password} ${url}
}

deploy() {
  local environment=$1
  local api_url=$2

  echo "Deploying to \"${environment}\"..."
  call_privileged_api ${CCE_AGENT_USER} ${CCE_AGENT_PASSWORD} "${api_url}/deploy"
}

main() {
  local environment=$1

  case ${environment} in
    "staging")
      deploy ${environment} ${CCE_STAGING_AGENT_URL}
      ;;
    "production")
      deploy ${environment} ${CCE_PROD_AGENT_URL}
      ;;
    *)
      echo "Environment \"${environment}\" unknown. Deploy failed."
      ;;
  esac
}

main $@
