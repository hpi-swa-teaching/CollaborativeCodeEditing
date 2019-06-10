client management
handleNewUser: aClient
	self broadcastMsg: (CCEMessage newUser: aClient identifier).	
	aClient sendMsg: (CCEMessage ackJoinSessionWith: self createSessionPayload).
	self addClient: aClient
	