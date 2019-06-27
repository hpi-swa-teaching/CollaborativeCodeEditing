startup
registerUpdateService
	self server addService: '/update' action: [ :req |
		self authenticate: req action: [
			self updateCCE.
			req send200Response: 'Update completed.' ] ]