requests ui
testCreateSessionSetsStatusToNoRemoteSession
	model createSessionWith: testPackages.			
				
	self assert: (CCESessionStatus noRemoteSession = session getStatus).

	networkInterface clear