request handling
CCEjoinSession: anOrderedDictionary from: aClient
	| sessionToken |

	sessionToken := anOrderedDictionary at: #token.
	
	sessions
		at: sessionToken
		ifPresent: [ 
			:session |	 
			session handleNewUser: aClient withIdentifier: (anOrderedDictionary at: #id)]
		ifAbsent: [
			aClient sendMsg: CCEMessage ackJoinSessionTokenNotFound ]
