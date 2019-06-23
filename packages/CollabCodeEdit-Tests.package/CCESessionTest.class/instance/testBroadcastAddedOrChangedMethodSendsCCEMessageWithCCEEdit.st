tests
testBroadcastAddedOrChangedMethodSendsCCEMessageWithCCEEdit
	session broadcastAddedOrModifiedMethod: #test in: CCETestDummy.
	self assert: (clientMock hasEditOfType: CCEMethodAddedOrModifiedEdit)