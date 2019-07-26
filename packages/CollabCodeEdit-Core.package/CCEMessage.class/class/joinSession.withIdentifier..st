client-Message creation
joinSession: aSessionToken withIdentifier: aString
	^ self new: (CCEMessage clientMessageTypes at:#joinSession:from:) 
			with: { #token -> aSessionToken . #id -> aString }