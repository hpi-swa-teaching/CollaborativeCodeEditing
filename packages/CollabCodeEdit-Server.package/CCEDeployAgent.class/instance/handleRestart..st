request handling
handleRestart: aWebRequest
	self authenticate: aWebRequest action: [
		self restartCCE.
		aWebRequest send200Response: '(Re-)start completed.' ]