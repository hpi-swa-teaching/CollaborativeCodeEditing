#!/usr/bin/env bash

################################################################################
# This file is heavily inspired by smalltalkCI's Squeak support
################################################################################

source ./lib.sh

generate_load_script() {
  cat >"${PATH_BUILD}/load.st" <<EOL
TranscriptStream redirectToStdOut: true.

FileStream stdout nextPutAll: 'Setting up...'; cr; flush.

[ Metacello new
    baseline: 'CollabCodeEdit';
    repository: 'github://hpi-swa-teaching/CollaborativeCodeEditing:${CCE_DEPLOY_BRANCH:-master}/packages';
    onConflict: [ :ex | ex pass ];
    load ] on: Warning do: [:w | w resume ].

GitStamp
    defaultName: 'Firstname Lastname';
    defaultEmail: 'user@domain.ext'.

FileStream stdout cr; nextPutAll: 'Starting services...'; cr; flush.

CCEDeployAgent start.
CCEServer start.

FileStream stdout cr; nextPutAll: 'Running.'; cr; flush
EOL
}

main() {
  generate_load_script
  run_script "load.st"
}

main "$@"
