startup
startConnection
		self socket
			onMessage: [ :data | self activeUI receive: data ];
			onClose: [ :data | self handleClosingWith: data ];
			fork.
		self connected: true.
		self startHeartbeatEngine.
		self ui setToConnected