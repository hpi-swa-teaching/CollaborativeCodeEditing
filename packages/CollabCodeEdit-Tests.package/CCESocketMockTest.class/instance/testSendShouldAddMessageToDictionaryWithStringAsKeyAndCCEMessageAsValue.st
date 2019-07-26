tests
testSendShouldAddMessageToDictionaryWithStringAsKeyAndCCEMessageAsValue
	| expectedMessage |
	
	expectedMessage := CCEMessage ackJoinSession.
	socketMock send: expectedMessage serialize.
	
	self assert: ( expectedMessage serialize) equals: (socketMock messages keys first )