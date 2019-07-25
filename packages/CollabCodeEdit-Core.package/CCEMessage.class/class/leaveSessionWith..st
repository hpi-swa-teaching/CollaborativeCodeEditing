client-Message creation
leaveSessionWith: aSessionTokenString
	^ self
		new: (CCEMessage clientMsgTypes at: #leaveSessionWith:from:) 
		with: { #token -> aSessionTokenString }