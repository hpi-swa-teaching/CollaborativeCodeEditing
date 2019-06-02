server-Message creation
ackJoinSession
	^ self new: (CCEMessage serverMsgTypes at: #ackJoinSession:) with: nil