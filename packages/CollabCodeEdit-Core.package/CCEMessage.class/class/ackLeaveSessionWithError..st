server-Message creation
ackLeaveSessionWithError: anOrderedDictionary
	^ self new: (CCEMessage serverMsgTypes at: #ackLeaveSessionWithError:) 
			with: anOrderedDictionary