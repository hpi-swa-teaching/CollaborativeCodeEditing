capturing methods
methodMoved: anEvent	
	self sendEditIfNotToBeIgnored: 
		(CCEMethodRecategorizedEdit 
			newWith: anEvent itemSelector to: anEvent itemProtocol in: anEvent itemClass)