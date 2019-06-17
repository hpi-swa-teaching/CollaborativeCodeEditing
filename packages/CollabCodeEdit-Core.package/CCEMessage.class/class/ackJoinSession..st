server-Message creation
ackJoinSession: aTokenString
	^ self new: (CCEMessage serverMsgTypes at: #ackJoinSession:) with: {#token -> aTokenString}