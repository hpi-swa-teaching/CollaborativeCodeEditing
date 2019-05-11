session management
destroySession: aSessionToken
	(self sessions at: aSessionToken) breakdown.
	self sessions removeKey: aSessionToken