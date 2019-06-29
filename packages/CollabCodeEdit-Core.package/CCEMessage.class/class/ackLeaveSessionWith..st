server-Message creation
ackLeaveSessionWith: anOrderedDictionary
	^ self new: (CCEMessage serverMessageTypes at: #ackLeaveSessionWith:) 
			with: anOrderedDictionary