server-Message creation
ackCreateSession: aSessionToken withError: aString
	^ self new: #ACK_CREATE_SESSION with: { #error -> aString . #token -> aSessionToken }