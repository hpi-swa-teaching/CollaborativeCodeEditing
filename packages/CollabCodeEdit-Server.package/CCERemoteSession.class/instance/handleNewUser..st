client management
handleNewUser: aClient
	self broadcastMessage: CCEMessage newUser.
	self  addClient: aClient.
	aClient sendMessage: (CCEMessage ackJoinSessionWith: self createSessionPayload)
	