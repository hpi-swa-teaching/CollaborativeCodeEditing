request handling
createSession: aMessage from: aClient
	| sessionToken |

	sessionToken := self createSession
		addClient: aClient;
		token.
	
	aClient sendMsg: (CCEMessage
		new: #ACK_CREATE_SESSION
		with: { #token -> sessionToken })
