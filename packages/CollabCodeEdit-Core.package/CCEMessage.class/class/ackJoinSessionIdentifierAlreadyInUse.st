server-Message creation
ackJoinSessionIdentifierAlreadyInUse
	^ self
		new: (CCEMessage serverMessageTypes at: #ackJoinSessionWithError:) 
		with: { #error -> 'Identifier is already in use' }