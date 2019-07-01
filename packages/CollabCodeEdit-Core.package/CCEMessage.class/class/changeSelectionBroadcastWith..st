server-Message creation
changeSelectionBroadcastWith: anOrderedDictionary
	^ self new: (CCEMessage serverMessageTypes at: #changeSelection:) 
			with: anOrderedDictionary