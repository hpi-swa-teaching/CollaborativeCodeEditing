actions
CCEsetConsistent: anOrderedDictionary from: aCCERemoteClient
	aCCERemoteClient session broadcastMessage:
		(CCEMessage
			setOtherUser: aCCERemoteClient identifier
			consistent: (anOrderedDictionary at: #isConsistent))