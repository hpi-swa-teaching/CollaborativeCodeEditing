request handling
joinSession: aMessage from: aClient
	| sessionToken |

	sessionToken := aMessage payload at: #token.
	
	sessions
		at: sessionToken
		ifPresent: [ :session |
			session broadcastMsg: (CCEMessage
				new: #NEW_USER
				with: nil).
			
			session addClient: aClient.
			aClient sendMsg: (CCEMessage
				new: #ACK_JOIN_SESSION
				with: nil) ]
		ifAbsent: [
			aClient sendMsg: (CCEMessage
				new: #ACK_JOIN_SESSION
				with: { #error -> 'Session not found' }) ]