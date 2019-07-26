startup
registerServices
	self server addService: '/' action: [ :request | self onRequest: request ]