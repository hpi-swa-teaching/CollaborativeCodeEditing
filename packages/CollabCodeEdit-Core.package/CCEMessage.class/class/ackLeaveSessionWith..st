server-Message creation
ackLeaveSessionWith: anOderedDictionary
	^ self new: (CCEMessage serverMsgTypes at: #ackLeaveSessionWith:) with: anOderedDictionary