client-Message creation
createSessionWith: anOrderedDictionary
	^ self
		new: (CCEMessage clientMessageTypes at: #createSessionWith:from:) 
		with: anOrderedDictionary