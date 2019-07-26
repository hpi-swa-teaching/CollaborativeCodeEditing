server-Message creation
ackJoinSessionIdentifierAlreadyInUse
	^ self
		new: #ackJoinSessionWithError:
		with: { #error -> 'Identifier is already in use' }