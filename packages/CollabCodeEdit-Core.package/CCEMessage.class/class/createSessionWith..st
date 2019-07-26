client-Message creation
createSessionWith: anOrderedDictionary
	^ self
		new: #createSessionWith:from:
		with: anOrderedDictionary