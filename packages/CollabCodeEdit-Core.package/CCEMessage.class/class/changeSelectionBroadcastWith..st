server-Message creation
changeSelectionBroadcastWith: anOrderedDictionary
	^ self new: (CCEMessage serverMsgTypes at: #changeSelection:) 
			with: anOrderedDictionary