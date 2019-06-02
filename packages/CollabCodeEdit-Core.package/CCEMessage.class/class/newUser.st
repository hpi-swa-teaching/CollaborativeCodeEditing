server-Message creation
newUser
	^ self new: (CCEMessage serverMsgTypes at: #newUser) with: nil