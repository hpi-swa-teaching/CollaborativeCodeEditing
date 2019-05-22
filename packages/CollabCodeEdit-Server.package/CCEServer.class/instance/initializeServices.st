initialize-release
initializeServices
	WebServer default addService: '/' action: [ :aRequest |
		self onRequest: aRequest ]