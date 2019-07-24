capturing classes
classRemoved: anEvent
	self sendEditIfNotToBeIgnored: (CCEEditBuilder buildClassRemovedEditFrom: anEvent)