constants
authUser
	^ (self envVar: 'CCE_AGENT_USER') ifNil: 'squeak'