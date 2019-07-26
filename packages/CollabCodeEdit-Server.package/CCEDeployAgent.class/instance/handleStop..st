request handling
handleStop: aWebRequest
	self authenticate: aWebRequest action: [
		self stopCCE.
		aWebRequest send200Response: 'Server is now down.' ]