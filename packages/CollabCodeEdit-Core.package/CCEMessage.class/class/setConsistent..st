client-Message creation
setConsistent: aBoolean
	^ self new: (CCEMessage clientMsgTypes at: #setConsistent:from:) 
			with: { #isConsistent -> aBoolean }