request handling
createSession: aMessage from: aClient
	| sessionToken |

	sessionToken := self createSession
		addClient: aClient;
		token.
	
	aClient sendMsg: (CCEMessage ackCreateSession: sessionToken)
