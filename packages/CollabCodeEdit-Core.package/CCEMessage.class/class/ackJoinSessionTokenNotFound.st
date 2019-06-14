server-Message creation
ackJoinSessionTokenNotFound
	^ self new: (CCEMessage serverMsgTypes at: #ackJoinSessionWithError:) 
			with: { #error -> 'Session not found' }