constants
serverPort
	^ (CCEDeployAgent environmentVariable: 'CCE_SERVER_PORT')
		ifNil: [ 8080 ]
		ifNotNil: [ (CCEDeployAgent environmentVariable: 'CCE_SERVER_PORT') asNumber ]