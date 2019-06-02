requests ui
testJoinSessionSetsStatusToNoRemoteSession
	model joinSessionWith: #testToken.		
	self assert: (CCESessionStatus noRemoteSession = session getStatus).
	networkInterface clear