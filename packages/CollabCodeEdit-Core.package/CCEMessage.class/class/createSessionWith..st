client-Message creation
createSessionWith: anOrderedDictionary
	^ self new: (CCEMessage clientMsgTypes at:#createSessionWith:from:) 
			with: anOrderedDictionary