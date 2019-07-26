running
testNoRemoteSessionIsLoaded
	session status setToNoRemoteSession.	
	self assert: clientUI noRemoteSessionIsLoaded.
	
	session status setToCleanRemoteSession.	
	self deny: clientUI noRemoteSessionIsLoaded