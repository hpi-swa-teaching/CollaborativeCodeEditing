request handling
CCEjoinSession: anOrderedDictionary from: aClient
	| sessionToken |

	sessionToken := anOrderedDictionary at: #token.

	sessions
		at: sessionToken
		ifPresent: [ 
			:session | session handleNewUser: aClient]
		ifAbsent: [
			aClient sendMessage: CCEMessage ackJoinSessionSessionNotFound ]
