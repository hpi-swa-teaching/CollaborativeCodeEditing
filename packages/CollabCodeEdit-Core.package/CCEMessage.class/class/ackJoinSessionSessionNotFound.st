server-Message creation
ackJoinSessionSessionNotFound
	^ self new: #ackJoinSessionWithError: with: { #error -> 'Session not found' }