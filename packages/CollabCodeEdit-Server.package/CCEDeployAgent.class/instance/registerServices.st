startup
registerServices
	self server addService: '/' action: [ :req |
		req send200Response: self checkOnline ].

	self server addService: '/deploy' action: [ :req |
		self authenticate: req action: [
			self deployCCE.
			req send200Response: 'Deployed successfully.' ] ].
	
	self server addService: '/restart' action: [ :req |
		self authenticate: req action: [
			self restartCCE.
			req send200Response: '(Re-)start completed.' ] ].
	
	self server addService: '/stop' action: [ :req |
		self authenticate: req action: [
			self stopCCE.
			req send200Response: 'Server is now down.' ] ].

	self server addService: '/update' action: [ :req |
		self authenticate: req action: [
			self updateCCE.
			req send200Response: 'Update completed.' ] ]
		
