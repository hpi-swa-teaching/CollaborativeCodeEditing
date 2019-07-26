tests backend
testNoSessionLoadedAndServerConnectionEstablished
	model client connected: true.
	model session status setToNoRemoteSession.
	
	self assert: model serverConnectionAndNoRemoteSession