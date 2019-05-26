as yet unclassified
testSendShouldAddMessageToDictionaryWithStringAsKeyAndCCEMessageAsValue
	| expectedMessage |
	
	expectedMessage := CCEMessage ackJoinSession.
	socketMock send: expectedMessage serialize.
	
	self assert: (expectedMessage serialize) equals: (socketMock messages keys at: 1).
	"self assert: expectedMessage == (socketMock messages at: expectedMessage serialize)"