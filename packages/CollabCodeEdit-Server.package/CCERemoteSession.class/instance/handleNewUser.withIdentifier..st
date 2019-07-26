client management
handleNewUser: aCCERemoteClient withIdentifier: aString	
	(self isIdentifierInUse: aString) ifTrue: [ ^ aCCERemoteClient
		sendMessage: CCEMessage ackJoinSessionIdentifierAlreadyInUse ].

	aCCERemoteClient
		identifier: aString;
		sendMessage: (CCEMessage ackJoinSessionWith: self ackJoinSessionPayload).
	self
		broadcastMessage: (CCEMessage newUser: aCCERemoteClient identifier);
		addClient: aCCERemoteClient