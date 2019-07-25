client-Message creation
changeSelectionWith: anOrderedDictionary
	^ self
		new: (CCEMessage clientMessageTypes at: #changeSelection:from:) 
		with: anOrderedDictionary