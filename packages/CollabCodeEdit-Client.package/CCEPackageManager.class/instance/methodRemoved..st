capturing methods
methodRemoved: anEvent
	self sendEditIfNotToBeIgnored: 
		(CCEMethodRemovedEdit 
			newWith: anEvent itemSelector in: anEvent itemClass)