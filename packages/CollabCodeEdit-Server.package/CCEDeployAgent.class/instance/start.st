startup
start
	self server: WebServer new.

	"TODO: These should be loaded from either env vars or CLI args"
	self server passwordAt: 'squeak' realm: self class authRealm put: 'squeak'.

	self server listenOn: self class defaultPort.
	self registerServices
