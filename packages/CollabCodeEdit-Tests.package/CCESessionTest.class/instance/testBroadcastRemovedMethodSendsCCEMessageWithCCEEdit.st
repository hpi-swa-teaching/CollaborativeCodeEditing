tests
testBroadcastRemovedMethodSendsCCEMessageWithCCEEdit
	session broadcastRemovedMethod: #test in: CCETestDummy.
	self assert: (clientMock hasEditOfType: CCEMethodRemovedEdit)