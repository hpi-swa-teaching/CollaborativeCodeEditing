tests backend
testCleanRemoteSessionAndServerConnectionEstablished
	model client connected: true.
	model session status setToCleanRemoteSession.
	
	self deny: model serverConnectionAndNoRemoteSession