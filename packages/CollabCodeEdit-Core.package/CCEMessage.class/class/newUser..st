server-Message creation
newUser: aString
	^ self new: (CCEMessage serverMsgTypes at: #newUser:) with: {#id -> aString}