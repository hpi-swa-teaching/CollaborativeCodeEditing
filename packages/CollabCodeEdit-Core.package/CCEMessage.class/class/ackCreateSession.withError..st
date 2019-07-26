server-Message creation
ackCreateSession: aSessionToken withError: aString
	^ self
		new: #ackCreateSessionWithError:
		with: { #error -> aString . #token -> aSessionToken }