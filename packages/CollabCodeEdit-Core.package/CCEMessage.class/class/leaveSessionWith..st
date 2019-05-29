client-Message creation
leaveSessionWith: aSessionToken
	^ self new: (CCEMessage clientMsgTypes at:#leaveSessionWith:from:) with: { #token -> aSessionToken }