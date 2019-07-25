server-Message creation
ackCreateSession: aSessionToken withError: aString
	^ self
		new: (CCEMessage serverMessageTypes at: #ackCreateSessionWithError:) 
		with: { #error -> aString . #token -> aSessionToken }