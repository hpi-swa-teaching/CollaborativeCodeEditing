tests
testSetToCleanRemoteSessionSetsStatusToCleanRemoteSession
	sessionStatus name: 'undefined'.
	
	sessionStatus setToCleanRemoteSession.
	
	self assert: CCESessionStatus cleanRemoteSession equals: sessionStatus name.