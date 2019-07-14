capturing methods
methodEdited: anEvent
	self sendEditIfNotToBeIgnored: 
		(CCEEditBuilder new buildMethodEditFrom: anEvent)