tests backend
testCleanRemoteSessionAndNoServerConnection
	model client connected: false.
	model session status setToCleanRemoteSession.
	
	self deny: model serverConnectionAndNoRemoteSession