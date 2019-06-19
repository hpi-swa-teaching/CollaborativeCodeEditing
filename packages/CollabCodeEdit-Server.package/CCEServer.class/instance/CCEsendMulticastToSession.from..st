request handling
CCEsendMulticastToSession: anOrderedDictionary from: aClient
	aClient sendMsgToSession: (CCEMessage forwardEditMessage: anOrderedDictionary)