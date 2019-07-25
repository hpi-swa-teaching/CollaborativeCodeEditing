client-Message creation
setClientName: aString
	^ self
		new: (CCEMessage clientMsgTypes at: #setClientName:from) 
		with: { #id -> aString }