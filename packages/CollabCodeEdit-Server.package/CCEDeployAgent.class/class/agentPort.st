constants
agentPort
	^ (self environmentVariable: 'CCE_AGENT_PORT')
		ifNil: [ 9999 ]
		ifNotNil: [ (self environmentVariable: 'CCE_AGENT_PORT') asNumber ]