request handling
CCEcreateSessionWith: anOrderedDictionary from: aCCERemoteClient
	aCCERemoteClient 
		identifier: (anOrderedDictionary at: #id);
		sendMessage: (CCEMessage ackCreateSession:
		(self createSessionWith: anOrderedDictionary
		    andCreator: aCCERemoteClient)
			    token)