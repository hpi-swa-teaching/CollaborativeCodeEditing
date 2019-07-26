startup
startConnection
	self socket
		onMessage: [ :data | self model receive: data ];
		onClose: [ :data | self handleClosingWith: data ];
		fork.
	self connected: true.
	self startHeartbeatEngine.
	self clientUI setToConnected