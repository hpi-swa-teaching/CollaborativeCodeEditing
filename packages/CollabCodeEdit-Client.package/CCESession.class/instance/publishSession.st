request-sending
publishSession
	self client sendMessage: (CCEMessage createSessionWith: self createSessionPayload).
	self status setToNoRemoteSession.
	self editManager listenForChangesInScope: self scope for: self client