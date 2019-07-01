startup
start
	self server: WebServer new.

	self server listenOn: self class serverPort.
	self registerServices