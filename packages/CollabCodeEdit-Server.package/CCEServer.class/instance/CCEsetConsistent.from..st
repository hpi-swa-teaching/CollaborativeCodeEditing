request handling
CCEsetConsistent: anOrderedDictionary from: aClient
	aClient session broadcastMessage: (CCEMessage setOtherUser: (aClient identifier) consistent:
		(anOrderedDictionary at: #isConsistent))