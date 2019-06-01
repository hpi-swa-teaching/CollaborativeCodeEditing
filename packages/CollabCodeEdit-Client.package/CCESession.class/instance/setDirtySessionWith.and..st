session-managment
setDirtySessionWith: aStringArray and: anInt
	self fillSessionWithScope: aStringArray andChecksum: anInt.
	self status setToDirtyRemoteSession
	