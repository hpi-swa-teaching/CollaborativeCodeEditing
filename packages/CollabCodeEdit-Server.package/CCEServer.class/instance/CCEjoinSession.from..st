actions
CCEjoinSession: anOrderedDictionary from: aCCERemoteClient	
	sessions
		at: (anOrderedDictionary at: #token)
		ifPresent: [ :session | session
			handleNewUser: aCCERemoteClient
			withIdentifier: (anOrderedDictionary at: #id) ]
		ifAbsent: [ aCCERemoteClient
			sendMessage: CCEMessage ackJoinSessionTokenNotFound ]
