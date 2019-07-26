tests
testAddCreatorShouldAddClientToSessionAndSetIsConsistentToTrue
	self assert: remoteSession clients isEmpty.
	
	remoteSession addCreator: CCERemoteClient new.
	
	self assert: remoteSession clients notEmpty.
	self assert: remoteSession clients first isConsistent.
	
	remoteSession clients removeAll