request-sending
broadcastAddedOrModifiedMethod: aMethodSource in: aClass
	self broadcastEditIfNotToBeIgnored: 
		(CCEMethodAddedOrModifiedEdit newWith: aMethodSource in: aClass) 