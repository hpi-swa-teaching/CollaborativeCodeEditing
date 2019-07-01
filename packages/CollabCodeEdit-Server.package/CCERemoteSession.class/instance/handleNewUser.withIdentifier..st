client management
handleNewUser: aClient withIdentifier: aString	
	(self clients anySatisfy: [:client | client identifier asString = aString])
		ifTrue: [^(aClient sendMessage: CCEMessage ackJoinSessionIdentifierAlreadyInUse)].
	
	aClient identifier: aString.
	self broadcastMessage: (CCEMessage newUser: aClient identifier).	
	aClient sendMessage: (CCEMessage ackJoinSessionWith: self ackJoinSessionPayload).
	self addClient: aClient