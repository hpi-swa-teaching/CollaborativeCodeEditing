startup
startConnectionTo: aURIString
	self socket: (WebClient webSocketTo: aURIString).
	self socket isNil
		ifTrue: [ self handleFailedConnecting ] 
		ifFalse: [ self startConnection ].