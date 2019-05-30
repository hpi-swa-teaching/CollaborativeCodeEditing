tests
testSetToDirtyRemoteSessionSetsStatusToDirtyRemoteSession
	sessionStatus name: 'undefined'.
	
	sessionStatus setToDirtyRemoteSession.
	
	self assert: CCESessionStatus dirtyRemoteSession equals: sessionStatus name.