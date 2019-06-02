client-Message creation
joinSession: aSessionToken
	^ self new: (CCEMessage clientMsgTypes at:#joinSession:from:) 
			with: { #token -> aSessionToken }