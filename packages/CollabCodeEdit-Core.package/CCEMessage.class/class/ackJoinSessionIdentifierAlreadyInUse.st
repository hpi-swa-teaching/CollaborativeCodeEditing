server-Message creation
ackJoinSessionIdentifierAlreadyInUse
	^ self new: (CCEMessage serverMsgTypes at: #ackJoinSessionWithError:) 
			with: { #error -> 'Identifier is already in use' }