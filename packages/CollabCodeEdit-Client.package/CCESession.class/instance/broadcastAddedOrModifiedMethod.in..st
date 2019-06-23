request-sending
broadcastAddedOrModifiedMethod: aMethodSource in: aClass
	self client sendMessage: 
		(CCEMessage sendEdit: 
			(CCEMethodAddedOrModifiedEdit newWith: aMethodSource in: aClass)) 