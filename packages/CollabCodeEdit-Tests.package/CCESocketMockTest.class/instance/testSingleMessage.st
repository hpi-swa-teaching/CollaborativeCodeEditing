as yet unclassified
testSingleMessage
	| testMessage | 
	
	testMessage := CCEMessage ackJoinSession.
	
	socketMock send: testMessage serialize.
	
	self assert: (testMessage == socketMock singleMessage).