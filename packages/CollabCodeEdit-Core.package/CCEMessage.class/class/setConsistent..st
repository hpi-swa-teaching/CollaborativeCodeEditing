client-Message creation
setConsistent: aBoolean
	^ self
		new: #setConsistent:from:
		with: { #isConsistent -> aBoolean }