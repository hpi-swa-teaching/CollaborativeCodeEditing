request handling
CCEsetConsistent: anOrderedDictionary from: aClient
	aClient session broadcastMsg: (CCEMessage setOtherUser: (aClient identifier) consistent: (anOrderedDictionary at: #isConsistent))