tests
testBroadcastRecategorizedMethodSendsCCEMessageWithCCEEdit
	session broadcastRecategorizedMethod: #test in: CCETestDummy into: #testCategory.
	self assert: (clientMock hasEditOfType: CCEMethodRecategorizedEdit)