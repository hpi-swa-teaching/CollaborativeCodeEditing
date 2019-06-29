server-Message creation
ackJoinSession: aTokenString
	^ self new: (CCEMessage serverMessageTypes at: #ackJoinSession:) with: { #token -> aTokenString }