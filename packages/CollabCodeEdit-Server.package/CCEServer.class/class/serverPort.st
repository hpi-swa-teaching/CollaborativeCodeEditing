constants
serverPort
	^ (ThisOSProcess thisOSProcess environmentAt: 'CCE_SERVER_PORT') ifNil: 8080