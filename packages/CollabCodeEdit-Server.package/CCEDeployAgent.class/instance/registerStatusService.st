startup
registerStatusService
	self server addService: '/' action: [ :req |
		req send200Response: self checkCCEOnline ]