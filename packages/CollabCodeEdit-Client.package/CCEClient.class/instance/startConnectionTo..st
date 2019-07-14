startup
startConnectionTo: aURIString
	self socket: (WebClient webSocketTo: aURIString).
	self socket isNil
		ifTrue: [ 
			self connected: false; error: 'error while connecting'.
			self ui setToDisconnected ] 
		ifFalse: [ 
			self socket
				onMessage: [ :data | self activeUI receive: data ];
				onClose: [ :data | self handleClosingWith: data ];
				fork.
			self connected: true.
      self startHeartbeatEngine.
			self ui setToConnected ].