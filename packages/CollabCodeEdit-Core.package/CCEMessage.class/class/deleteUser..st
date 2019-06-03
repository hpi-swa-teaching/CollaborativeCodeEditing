server-Message creation
deleteUser: aString
	^ CCEMessage new: (CCEMessage serverMsgTypes at: #newUser:) with: { #id -> aString }