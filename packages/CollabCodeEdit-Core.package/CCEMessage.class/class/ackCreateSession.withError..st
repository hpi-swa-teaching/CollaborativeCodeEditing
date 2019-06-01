server-Message creation
ackCreateSession: aSessionToken withError: aString
	^ self new: (CCEMessage serverMsgTypes at: #ackCreateSessionWithError:) 
			with: { #error -> aString . #token -> aSessionToken }