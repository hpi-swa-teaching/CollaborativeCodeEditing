capturing classes
classRemoved: anEvent
	self sendEditIfNotToBeIgnored: (CCEEditBuilder new buildClassRemovedEditFrom: anEvent)