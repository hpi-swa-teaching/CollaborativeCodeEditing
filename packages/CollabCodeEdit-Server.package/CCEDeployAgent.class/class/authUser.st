constants
authUser
	^ (self environmentVariable: 'CCE_AGENT_USER') ifNil: [ 'squeak' ]