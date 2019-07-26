#!/usr/bin/env bash

################################################################################
# This file is heavily inspired by smalltalkCI's Squeak support
################################################################################

source ./lib.sh

main() {
  initialize
  download_image
  prepare_vm
}

main "$@"
