actions
CCEjoinSession: anOrderedDictionary from: aCCERemoteClient
	| sessionToken |

	sessionToken := anOrderedDictionary at: #token.
	
	sessions
		at: sessionToken
		ifPresent: [ :session | session
			handleNewUser: aCCERemoteClient
			withIdentifier: (anOrderedDictionary at: #id) ]
		ifAbsent: [ aCCERemoteClient
			sendMessage: CCEMessage ackJoinSessionTokenNotFound ]
