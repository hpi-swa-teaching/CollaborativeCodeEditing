tests
testSendMessage
	clientMock sendMessage: CCEMessage new.
	self assert: (clientMock messages includes: CCEMessage new)