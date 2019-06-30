server-Message creation
ackCreateSession: aSessionToken
	^ self new: (CCEMessage serverMessageTypes at: #ackCreateSession:) 
			with: { #token -> aSessionToken }