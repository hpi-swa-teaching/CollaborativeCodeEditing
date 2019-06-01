server-Message creation
setOtherUser: aString consistent: aBoolean
	^ self new: (CCEMessage serverMsgTypes at: #setOtherUserConsistent:) 
			with: {#userIdentifier -> aString . #isConsistent -> aBoolean}