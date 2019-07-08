capturing methods
methodEdited: anEvent
	self halt.
	self sendEditIfNotToBeIgnored: 
		(CCEEditBuilder new buildMethodEditFrom: anEvent)