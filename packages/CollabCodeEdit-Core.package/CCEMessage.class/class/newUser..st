server-Message creation
newUser: aString
	^ self
		new: #newUser:
		with: { #id -> aString }