capturing classes
classModified: anEvent
	self sendEditIfNotToBeIgnored: (CCEEditBuilder new buildClassModifiedEditFrom: anEvent)