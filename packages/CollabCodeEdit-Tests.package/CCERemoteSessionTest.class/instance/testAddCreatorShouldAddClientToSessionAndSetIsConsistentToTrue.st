tests
testAddCreatorShouldAddClientToSessionAndSetIsConsistentToTrue
	self assert: 0 equals: remoteSession clients size.
	
	remoteSession addCreator: CCERemoteClient new.
	
	self assert: 1 equals: remoteSession clients size.
	self assert: remoteSession clients first isConsistent.