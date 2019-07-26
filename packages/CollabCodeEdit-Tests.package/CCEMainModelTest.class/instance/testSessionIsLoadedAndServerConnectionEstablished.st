tests backend
testSessionIsLoadedAndServerConnectionEstablished
	model client connected: true.
	model session status setToCleanRemoteSession.
	
	self assert: model serverConnectionAndRemoteSession.
	
	model client connected: false.
	
	self deny: model serverConnectionAndRemoteSession.
	
	model client connected: true.
	model session status setToNoRemoteSession.
	
	self deny: model serverConnectionAndRemoteSession.
	
	model client connected: false.
	model session status setToNoRemoteSession.
	
	self deny: model serverConnectionAndRemoteSession.
	
	