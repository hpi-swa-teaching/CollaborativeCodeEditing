tests
testHasMessageOfType
	| testMessage | 
	
	testMessage := CCEMessage ackJoinSession.
	
	socketMock send: testMessage serialize.
	
	self assert: (socketMock hasMessageOfType: #ackJoinSession:)