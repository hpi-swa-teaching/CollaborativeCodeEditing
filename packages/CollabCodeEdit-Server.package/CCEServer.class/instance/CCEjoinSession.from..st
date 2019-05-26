request handling
CCEjoinSession: aMessage from: aClient
	| sessionToken |

	sessionToken := aMessage payload at: #token.
	
	sessions
		at: sessionToken
		ifPresent: [ 
			:session | session handleNewUser: aClient]
		ifAbsent: [
			aClient sendMsg: CCEMessage ackJoinSessionSessionNotFound ]
