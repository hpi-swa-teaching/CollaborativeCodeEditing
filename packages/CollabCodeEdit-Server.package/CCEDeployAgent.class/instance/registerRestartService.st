startup
registerRestartService
	self server addService: '/restart' action: [ :req |
		self authenticate: req action: [
			self restartCCE.
			req send200Response: '(Re-)start completed.' ] ]