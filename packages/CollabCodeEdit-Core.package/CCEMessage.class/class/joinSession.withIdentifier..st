client-Message creation
joinSession: aSessionToken withIdentifier: aString
	^ self
		new: (CCEMessage clientMsgTypes at:#joinSession:from:) 
		with: { #token -> aSessionToken . #id -> aString }