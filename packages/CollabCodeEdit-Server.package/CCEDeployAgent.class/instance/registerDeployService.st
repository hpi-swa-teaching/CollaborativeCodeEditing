startup
registerDeployService
	self server addService: '/deploy' action: [ :req |
		self authenticate: req action: [
			self deployCCE.
			req send200Response: 'Deployed successfully.' ] ]