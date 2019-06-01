server-Message creation
ackCreateSession: aSessionToken
	^ self new: (CCEMessage serverMsgTypes at: #ackCreateSession:) 
			with: { #token -> aSessionToken }