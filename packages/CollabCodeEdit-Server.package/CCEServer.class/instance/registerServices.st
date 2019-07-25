startup
registerServices
	self server addService: '/' action: [ :aRequest | self onRequest: aRequest ]