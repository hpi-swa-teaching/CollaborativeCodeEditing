server-Message creation
ackLeaveSessionWithError: anOderedDictionary
	^ self new: (CCEMessage serverMsgTypes at: #ackLeaveSessionWithError:) 
			with: anOderedDictionary