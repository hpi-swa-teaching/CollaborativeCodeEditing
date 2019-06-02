request handling
CCEcreateSessionWith: anOrderedDictionary from: aClient
	| sessionToken |

	sessionToken := (self createSessionWith: anOrderedDictionary)
		addCreator: aClient;
		token.
    
	aClient sendMsg: (CCEMessage ackCreateSession: sessionToken)

