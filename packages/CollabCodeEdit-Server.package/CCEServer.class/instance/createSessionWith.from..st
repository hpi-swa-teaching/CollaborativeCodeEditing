request handling
createSessionWith: aMessage from: aClient
	| sessionToken |

	sessionToken := self createSession
		addClient: aClient;
		token.
    
	aClient sendMsg: (CCEMessage ackCreateSession: sessionToken)

