request-sending
broadcastRecategorizedMethod: aMethodSelector in: aClass into: aCategory
	self client sendMessage: 
		(CCEMessage sendEdit: 
			(CCEMethodRecategorizedEdit newWith: aMethodSelector to: aCategory in: aClass)) 