as yet unclassified
testClear
	self assert: 0 equals: socketMock messages size.
	
	socketMock send: CCEMessage ackJoinSession serialize.
	socketMock send: (CCEMessage ackLeaveSessionWith: (OrderedDictionary newFrom: {#token -> #testToken})) serialize.
	
	self assert: 2 equals: socketMock messages size.
	
	socketMock clear.
	
	self assert: 0 equals: socketMock messages size