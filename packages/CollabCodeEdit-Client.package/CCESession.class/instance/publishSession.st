request-sending
publishSession
	self client sendMessage: (CCEMessage createSessionWith: self createSessionPayload).
	self status setToNoRemoteSession.
	self packageManager listenForChangesInScope: self scope for: self client