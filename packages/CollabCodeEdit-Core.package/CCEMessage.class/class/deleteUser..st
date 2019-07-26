server-Message creation
deleteUser: aString
	^ CCEMessage
		new: #deleteUser:
		with: { #id -> aString }