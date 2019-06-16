request handling
CCEsendMulticastToSession: anOrderedDictionary from: aClient
	aClient sendMessageToSession: (CCEMessage forwardEditMessage: anOrderedDictionary)