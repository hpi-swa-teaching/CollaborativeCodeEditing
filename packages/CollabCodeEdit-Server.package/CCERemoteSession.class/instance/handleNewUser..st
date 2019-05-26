client management
handleNewUser: aClient
	self broadcastMsg: CCEMessage newUser.
	self  addClient: aClient.
	aClient sendMsg: (CCEMessage ackJoinSessionWith: self createSessionPayload)
	