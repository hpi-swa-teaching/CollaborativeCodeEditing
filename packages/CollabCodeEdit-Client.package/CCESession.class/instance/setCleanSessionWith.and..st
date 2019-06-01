session-managment
setCleanSessionWith: aStringArray and: anInt
	self fillSessionWithScope: aStringArray andChecksum: anInt.
	self status setToCleanRemoteSession
	