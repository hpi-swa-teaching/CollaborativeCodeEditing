startup
registerServiceAt: aRouteName action: aBlock
	self server addService: aRouteName action: [ :req |
		self handleErrorsFor: req action: aBlock ]