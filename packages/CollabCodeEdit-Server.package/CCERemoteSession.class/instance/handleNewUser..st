client management
handleNewUser: aClient
	self broadcastMsg: (CCEMessage newUser: aClient identifier).
	self addClient: aClient.
	aClient sendMsg: (CCEMessage ackJoinSessionWith: self createSessionPayload)
	