startup
registerStopService
	self server addService: '/stop' action: [ :req |
		self authenticate: req action: [
			self stopCCE.
			req send200Response: 'Server is now down.' ] ]