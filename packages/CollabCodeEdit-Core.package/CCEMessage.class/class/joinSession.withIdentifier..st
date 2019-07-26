client-Message creation
joinSession: aSessionToken withIdentifier: aString
	^ self
		new: #joinSession:from:
		with: { #token -> aSessionToken . #id -> aString }