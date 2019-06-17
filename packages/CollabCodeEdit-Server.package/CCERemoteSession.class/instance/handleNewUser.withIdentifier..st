client management
handleNewUser: aClient withIdentifier: aString
	
	(self clients anySatisfy: [:client | client identifier asString = aString]) ifTrue: [^(aClient sendMsg: CCEMessage ackJoinSessionIdentifierAlreadyInUse)].
	
	aClient identifier: aString.
	self broadcastMsg: (CCEMessage newUser: aClient identifier).	
	aClient sendMsg: (CCEMessage ackJoinSessionWith: self ackJoinSessionPayload).
	self addClient: aClient