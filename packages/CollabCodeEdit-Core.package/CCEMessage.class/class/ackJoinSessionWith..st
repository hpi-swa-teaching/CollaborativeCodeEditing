server-Message creation
ackJoinSessionWith: anOrderedDictionary
	^ self new: (CCEMessage serverMsgTypes at: #ackJoinSession:) with: anOrderedDictionary