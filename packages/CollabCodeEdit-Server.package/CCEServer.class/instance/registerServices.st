startup
registerServices
	WebServer default addService: '/' action: [ :aRequest |
		self onRequest: aRequest ]