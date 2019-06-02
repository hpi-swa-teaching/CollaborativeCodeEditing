requests ui
testSetClientNameSendsCCEMessageToServer
	model setClientName: 'testName'.
	
	self assert: (networkInterface singleMessage = (CCEMessage setClientName: 'testName'))