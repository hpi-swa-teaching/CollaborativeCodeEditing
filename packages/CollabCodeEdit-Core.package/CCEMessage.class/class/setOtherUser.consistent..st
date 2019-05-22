server-Message creation
setOtherUser: aString consistent: aBoolean
	^ self new: #setOtherUserConsistent: with: {#userIdentifier -> aString . #isConsistent -> aBoolean}