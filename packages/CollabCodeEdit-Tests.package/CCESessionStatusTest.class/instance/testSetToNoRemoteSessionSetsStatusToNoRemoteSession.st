tests
testSetToNoRemoteSessionSetsStatusToNoRemoteSession
	sessionStatus name: 'undefined'.
	
	sessionStatus setToNoRemoteSession.
	
	self assert: CCESessionStatus noRemoteSession equals: sessionStatus name.