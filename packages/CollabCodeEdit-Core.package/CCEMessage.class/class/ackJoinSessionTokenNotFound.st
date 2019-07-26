server-Message creation
ackJoinSessionTokenNotFound
	^ self
		new: #ackJoinSessionWithError:
		with: { #error -> 'Session not found' }