server-Message creation
ackJoinSessionTokenNotFound
	^ self new: (CCEMessage serverMessageTypes at: #ackJoinSessionWithError:) 
			with: { #error -> 'Session not found' }