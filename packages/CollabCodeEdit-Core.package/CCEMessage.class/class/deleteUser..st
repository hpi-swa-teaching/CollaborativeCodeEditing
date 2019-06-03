server-Message creation
deleteUser: aString
	^ CCEMessage new: (CCEMessage serverMsgTypes at: #deleteUser:) with: { #id -> aString }