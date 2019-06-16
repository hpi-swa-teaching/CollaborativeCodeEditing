request handling
CCEcreateSessionWith: anOrderedDictionary from: aClient
	| sessionToken |

	sessionToken := (self createSessionWith: anOrderedDictionary)
		addClient: aClient;
		token.
    
	aClient sendMessage: (CCEMessage ackCreateSession: sessionToken)

