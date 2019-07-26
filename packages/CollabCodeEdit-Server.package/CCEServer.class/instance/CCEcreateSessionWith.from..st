request handling
CCEcreateSessionWith: anOrderedDictionary from: aClient
	aClient 
		identifier: (anOrderedDictionary at: #id);
		sendMessage: (CCEMessage ackCreateSession:
			((self createSessionWith: anOrderedDictionary) 
				addCreator: aClient;
				token))