client-Message creation
leaveSessionWith: aSessionTokenString
	^ self
		new: (CCEMessage clientMessageTypes at: #leaveSessionWith:from:) 
		with: { #token -> aSessionTokenString }