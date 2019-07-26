startup
registerServiceAt: aRouteName action: aBlock
	self server addService: aRouteName action: [ :request |
		self handleErrorsFor: request action: aBlock ]