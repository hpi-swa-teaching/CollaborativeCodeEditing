request handling
joinSession: aMessage from: aClient
	| sessionToken |

	sessionToken := aMessage payload at: #token.
	
	sessions
		at: sessionToken
		ifPresent: [ :session |
			session broadcastMsg: CCEMessage newUser.
			session addClient: aClient.
			aClient sendMsg: CCEMessage ackJoinSession ]
		ifAbsent: [
			aClient sendMsg: CCEMessage ackJoinSessionSessionNotFound ]