server-Message creation
ackLeaveSessionWithError: anOrderedDictionary
	^ self
		new: (CCEMessage serverMessageTypes at: #ackLeaveSessionWithError:) 
		with: anOrderedDictionary