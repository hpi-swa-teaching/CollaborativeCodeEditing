server-Message creation
setOtherUser: aString consistent: aBoolean
	^ self
		new: (CCEMessage serverMessageTypes at: #setOtherUserConsistent:) 
		with: { #id -> aString . #isConsistent -> aBoolean }