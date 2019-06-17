request handling
CCEcreateSessionWith: anOrderedDictionary from: aClient
	| sessionToken |

	aClient identifier: (anOrderedDictionary at: #id).
	sessionToken := (self createSessionWith: anOrderedDictionary)
		addCreator: aClient;
		token.  

	aClient sendMsg: (CCEMessage ackCreateSession: sessionToken)

