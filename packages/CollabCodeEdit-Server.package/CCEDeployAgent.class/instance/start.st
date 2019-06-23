startup
start
	self server: WebServer new.

	"TODO: These should be loaded from either env vars or CLI args"
	self server
		passwordAt: self class authUser
		realm: self class authRealm
		put: self class authPassword.

	self server listenOn: self class agentPort.
	self registerServices