client-Message creation
joinSession: aSessionToken
	^ self new: #joinSession:from: with: { #token -> aSessionToken }