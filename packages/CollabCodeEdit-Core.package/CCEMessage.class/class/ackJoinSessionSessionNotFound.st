server-Message creation
ackJoinSessionSessionNotFound
	^ self new: #ACK_JOIN_SESSION with: { #error -> 'Session not found' }