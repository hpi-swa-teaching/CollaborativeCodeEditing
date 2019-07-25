actions
CCEcreateSessionWith: anOrderedDictionary from: aCCERemoteClient
	| sessionToken |

	aCCERemoteClient identifier: (anOrderedDictionary at: #id).
	sessionToken := (self createSessionWith: anOrderedDictionary)
		addCreator: aCCERemoteClient;
		token.

	aCCERemoteClient sendMessage: (CCEMessage ackCreateSession: sessionToken)