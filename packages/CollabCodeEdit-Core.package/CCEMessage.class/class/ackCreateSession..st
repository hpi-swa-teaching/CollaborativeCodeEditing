server-Message creation
ackCreateSession: aSessionToken
	^ self new: #ackCreateSession: with: { #token -> aSessionToken }