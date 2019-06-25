constants
agentPort
	^ (self envVar: 'CCE_AGENT_PORT')
		ifNil: [ 9999 ]
		ifNotNil: [ (self envVar: 'CCE_AGENT_PORT') asNumber ]