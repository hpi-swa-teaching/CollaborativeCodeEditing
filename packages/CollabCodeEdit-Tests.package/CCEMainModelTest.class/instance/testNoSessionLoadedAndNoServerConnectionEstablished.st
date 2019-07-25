tests backend
testNoSessionLoadedAndNoServerConnectionEstablished
	model session status setToNoRemoteSession.
	model client connected: false.
	
	self deny: model serverConnectionAndNoRemoteSession