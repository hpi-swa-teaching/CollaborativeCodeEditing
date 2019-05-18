server-Message creation
ackCreateSession: aSessionToken
	^ self new: #ACK_CREATE_SESSION with: { #token -> aSessionToken }