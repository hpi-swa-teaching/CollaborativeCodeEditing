server-Message creation
ackJoinSession: aTokenString
	^ self
		new: #ackJoinSession:
		with: { #token -> aTokenString }