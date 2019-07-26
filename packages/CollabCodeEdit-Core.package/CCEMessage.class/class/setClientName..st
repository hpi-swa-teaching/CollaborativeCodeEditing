client-Message creation
setClientName: aString
	^ self
		new: #setClientName:from
		with: { #id -> aString }