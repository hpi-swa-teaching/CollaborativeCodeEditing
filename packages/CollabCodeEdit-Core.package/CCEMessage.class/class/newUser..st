server-Message creation
newUser: aString
	^ self new: (CCEMessage serverMessageTypes at: #newUser:) with: { #id -> aString }