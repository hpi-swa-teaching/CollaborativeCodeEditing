client management
handleNewUser: aCCERemoteClient withIdentifier: aString	
	(self clients anySatisfy: [ :client | client identifier asString = aString ])
		ifTrue: [ ^ aCCERemoteClient
			sendMessage: CCEMessage ackJoinSessionIdentifierAlreadyInUse ].

	aCCERemoteClient
		identifier: aString;
		sendMessage: (CCEMessage ackJoinSessionWith: self ackJoinSessionPayload).
	self
		broadcastMessage: (CCEMessage newUser: aCCERemoteClient identifier);
		addClient: aCCERemoteClient