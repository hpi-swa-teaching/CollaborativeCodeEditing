tests
testHasMessageOfType
	socketMock send: (CCEMessage ackJoinSession) serialize.
	self assert: (socketMock hasMessageOfType: (CCEMessage serverMessageTypes at: #ackJoinSession:))