session-managment
activateSessionWithScope: aStringArray andChecksum: anInt
	self scope: aStringArray.
	self checksum: anInt.
	
	CCEClient default send: (CCEMessage setConsistent: true)
	