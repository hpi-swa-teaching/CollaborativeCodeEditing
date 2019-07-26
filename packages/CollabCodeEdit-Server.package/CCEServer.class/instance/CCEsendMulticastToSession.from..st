actions
CCEsendMulticastToSession: anOrderedDictionary from: aCCERemoteClient
	aCCERemoteClient sendMessageToSession:
		(CCEMessage forwardEdit: anOrderedDictionary)