startup
registerServices
	self server addService: '/update' action: [ :req | 
		self authenticate: req action: [
			self update.
			req send200Response: 'Ok.' ] ]
		
