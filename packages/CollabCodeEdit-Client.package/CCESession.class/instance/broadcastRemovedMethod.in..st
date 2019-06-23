request-sending
broadcastRemovedMethod: aMethodSelector in: aClass
	self broadcastEditIfNotToBeIgnored:  
		(CCEMethodRemovedEdit newWith: aMethodSelector in: aClass) 