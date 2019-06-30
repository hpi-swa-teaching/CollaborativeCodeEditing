constants
updateBranch
	^ (self environmentVariable: 'CCE_DEPLOY_BRANCH') ifNil: [ 'master' ]
