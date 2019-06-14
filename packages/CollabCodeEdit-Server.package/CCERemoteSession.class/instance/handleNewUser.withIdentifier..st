client management
handleNewUser: aClient withIdentifier: aString
	
	self clients do: [	:client | 
					(client identifier asString = aString) ifTrue: 
						[^(aClient sendMsg: CCEMessage ackJoinSessionIdentifierAlreadyInUse)].].
	
	aClient identifier: aString.
	self broadcastMsg: (CCEMessage newUser: aClient identifier).	
	aClient sendMsg: (CCEMessage ackJoinSessionWith: self createSessionPayload).
	self addClient: aClient
	