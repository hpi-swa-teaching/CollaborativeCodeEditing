request handling
createSessionWith: anOrderedDictionary from: aClient
	| sessionToken |

	sessionToken := (self createSessionWith: anOrderedDictionary)
		addClient: aClient;
		token.
    
	aClient sendMsg: (CCEMessage ackCreateSession: sessionToken)

