as yet unclassified
broadcastAddedOrChangedMethod: aMethodSource in: aClass
	self client sendMessage: 
		(CCEMessage sendEdit: 
			(CCEMethodAddedOrChangedEdit newWith: aMethodSource in: aClass name)) 