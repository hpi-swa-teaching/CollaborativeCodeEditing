tests
testResetSetsStatusToNoRemoteSession
	sessionStatus name: 'undefined'.
	
	sessionStatus reset.
	
	self assert: CCESessionStatus noRemoteSession equals: sessionStatus name