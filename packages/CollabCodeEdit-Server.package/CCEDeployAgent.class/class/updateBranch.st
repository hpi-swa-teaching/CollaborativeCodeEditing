constants
updateBranch
	^ (self envVar: 'CCE_DEPLOY_BRANCH') ifNil: [ 'master' ]