tests backend
testNoSessionLoadedAndServerConnectionEstablished
	model client connected: true.
	model session status setToNoRemoteSession.
	
	self assert: model serverConnectionAndNoRemoteSession.
	
	model client connected: false.
	
	self deny: model serverConnectionAndNoRemoteSession.
	
	model client connected: true.
	model session status setToCleanRemoteSession.
	
	self deny: model serverConnectionAndNoRemoteSession.
	
	model client connected: false.
	model session status setToCleanRemoteSession.
	
	self deny: model serverConnectionAndNoRemoteSession.