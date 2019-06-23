request-sending
broadcastRecategorizedMethod: aMethodSelector in: aClass into: aCategory
	self broadcastEditIfNotToBeIgnored: 
		(CCEMethodRecategorizedEdit newWith: aMethodSelector to: aCategory in: aClass) 