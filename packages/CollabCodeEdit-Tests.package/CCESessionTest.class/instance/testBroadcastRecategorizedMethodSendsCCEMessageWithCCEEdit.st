tests
testBroadcastRecategorizedMethodSendsCCEMessageWithCCEEdit
	| clientMock |
	
	clientMock:= CCEClientMock new.
	session client: clientMock.
	session broadcastRecategorizedMethod: #test in: CCETestDummy into: #testCategory.
	self assert: (clientMock hasEditOfType: CCEMethodRecategorizedEdit)