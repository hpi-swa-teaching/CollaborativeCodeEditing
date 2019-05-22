client-Message creation
joinSession: aSessionToken
	^ self new: #JOIN_SESSION with: { #token -> aSessionToken }