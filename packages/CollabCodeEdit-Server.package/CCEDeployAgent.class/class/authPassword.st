constants
authPassword
	^ (self envVar: 'CCE_AGENT_PASSWORD') ifNil: 'squeak'