request-sending
broadcastRemovedMethod: aMethodSelector in: aClass
	self client sendMessage: 
		(CCEMessage sendEdit: 
			(CCEMethodRemovedEdit newWith: aMethodSelector in: aClass)) 