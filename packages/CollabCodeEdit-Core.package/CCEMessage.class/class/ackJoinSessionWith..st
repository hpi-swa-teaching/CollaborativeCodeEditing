server-Message creation
ackJoinSessionWith: anOrderedDictionary
	^ self new: (CCEMessage serverMessageTypes at: #ackJoinSession:) with: anOrderedDictionary