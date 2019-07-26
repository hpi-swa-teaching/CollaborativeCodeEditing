client-Message creation
leaveSessionWith: aSessionTokenString
	^ self
		new: #leaveSessionWith:from:
		with: { #token -> aSessionTokenString }