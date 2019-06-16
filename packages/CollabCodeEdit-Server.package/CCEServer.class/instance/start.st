startup
start
	self server: WebServer reset default.

	self server listenOn: self class defaultPort.
	self registerServices