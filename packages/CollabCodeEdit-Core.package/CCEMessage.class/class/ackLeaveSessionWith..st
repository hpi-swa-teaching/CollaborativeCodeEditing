server-Message creation
ackLeaveSessionWith: anOrderedDictionary
	^ self new: (CCEMessage serverMsgTypes at: #ackLeaveSessionWith:) 
			with: anOrderedDictionary