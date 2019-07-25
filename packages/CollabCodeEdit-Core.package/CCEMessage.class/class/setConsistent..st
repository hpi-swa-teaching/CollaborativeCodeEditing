client-Message creation
setConsistent: aBoolean
	^ self
		new: (CCEMessage clientMessageTypes at: #setConsistent:from:) 
		with: { #isConsistent -> aBoolean }