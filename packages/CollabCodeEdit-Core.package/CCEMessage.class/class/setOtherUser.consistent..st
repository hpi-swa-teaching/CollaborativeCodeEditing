server-Message creation
setOtherUser: aString consistent: aBoolean
	^ self
		new: #setOtherUserConsistent:
		with: { #id -> aString . #isConsistent -> aBoolean }