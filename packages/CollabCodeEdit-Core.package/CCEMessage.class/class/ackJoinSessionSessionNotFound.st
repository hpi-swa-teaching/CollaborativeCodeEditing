server-Message creation
ackJoinSessionSessionNotFound
	^ self new: (CCEMessage serverMsgTypes at: #ackJoinSessionWithError:) with: { #error -> 'Session not found' }