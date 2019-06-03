server-Message creation
setOtherUser: aString consistent: aBoolean
	^ self new: (CCEMessage serverMsgTypes at: #setOtherUserConsistent:) 
			with: {#id -> aString . #isConsistent -> aBoolean}