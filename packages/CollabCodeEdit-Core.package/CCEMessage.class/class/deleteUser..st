server-Message creation
deleteUser: aString
	^ CCEMessage
		new: (CCEMessage serverMessageTypes at: #deleteUser:)
		with: { #id -> aString }