constants
authPassword
	^ (self environmentVariable: 'CCE_AGENT_PASSWORD') ifNil: [ 'squeak' ]