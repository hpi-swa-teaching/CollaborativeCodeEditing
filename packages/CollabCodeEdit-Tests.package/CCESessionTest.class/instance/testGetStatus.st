tests
testGetStatus
	session status reset.
	
	session status setToDirtyRemoteSession.	
	self assert: (session getStatus = CCESessionStatus dirtyRemoteSession).
	
	session status setToNoRemoteSession.	
	self assert: (session getStatus = CCESessionStatus noRemoteSession).
	
	session status setToCleanRemoteSession.
	self assert: (session getStatus = CCESessionStatus cleanRemoteSession)
	