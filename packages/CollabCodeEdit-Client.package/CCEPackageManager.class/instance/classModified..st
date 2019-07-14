capturing classes
classModified: anEvent
	self sendEditIfNotToBeIgnored: (CCEEditBuilder new buildClassModifiedOrAddedEditFrom: anEvent)