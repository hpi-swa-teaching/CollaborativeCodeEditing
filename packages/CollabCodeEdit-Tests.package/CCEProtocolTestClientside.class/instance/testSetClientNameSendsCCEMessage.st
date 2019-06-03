requests ui
testSetClientNameSendsCCEMessage
	model setClientName: 'testName'.
	self assert: (networkInterface singleMessage = (CCEMessage setClientName: 'testName')).