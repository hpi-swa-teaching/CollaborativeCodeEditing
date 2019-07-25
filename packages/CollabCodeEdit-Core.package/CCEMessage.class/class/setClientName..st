client-Message creation
setClientName: aString
	^ self
		new: (CCEMessage clientMessageTypes at: #setClientName:from) 
		with: { #id -> aString }