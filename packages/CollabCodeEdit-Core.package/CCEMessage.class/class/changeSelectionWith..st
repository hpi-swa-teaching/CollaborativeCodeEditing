client-Message creation
changeSelectionWith: anOrderedDictionary
	^ self new: (CCEMessage clientMsgTypes at: #changeSelection:from) 
			with: anOrderedDictionary