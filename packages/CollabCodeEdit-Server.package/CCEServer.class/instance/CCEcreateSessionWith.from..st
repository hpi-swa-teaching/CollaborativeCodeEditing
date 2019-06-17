request handling
CCEcreateSessionWith: anOrderedDictionary from: aClient
	| sessionToken |

	aClient identifier: (anOrderedDictionary at: #id).
	sessionToken := (self createSessionWith: anOrderedDictionary)
		addCreator: aClient;
		token.
	
	self halt.     

	aClient sendMsg: (CCEMessage ackCreateSession: sessionToken)

