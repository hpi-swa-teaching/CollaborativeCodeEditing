capturing classes
classEdited: anEvent
	self halt.
	self sendEditIfNotToBeIgnored: (CCEEditBuilder new buildFrom: anEvent)