constants
agentPort
	^ (self envVar: 'CCE_AGENT_PORT') ifNil: 9999