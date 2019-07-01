startup
start
	self server: WebServer new.

	self server
		passwordAt: self class authUser
		realm: self class authRealm
		put: self class authPassword.

	self server listenOn: self class agentPort.
	self registerServices