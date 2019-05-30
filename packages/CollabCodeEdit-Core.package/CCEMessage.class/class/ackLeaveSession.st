server-Message creation
ackLeaveSession
	^ self new: (CCEMessage serverMsgTypes at: #ackLeaveSession) with: nil