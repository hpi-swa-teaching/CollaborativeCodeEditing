tests
testBroadcastAddedOrChangedMethodSendsCCEMessageWithCCEEdit
	| clientMock |
	
	clientMock:= CCEClientMock new.
	session client: clientMock.
	session broadcastAddedOrModifiedMethod: #test in: CCETestDummy.
	self assert: (clientMock messages 
		anySatisfy: [ :message | message payload class = CCEMethodAddedOrChangedEdit ])