capturing methods
methodEdited: anEvent
	self sendEditIfNotToBeIgnored: 
		(CCEEditBuilder buildMethodEditFrom: anEvent)