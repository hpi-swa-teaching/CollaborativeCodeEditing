tests
testHasMessage
	| testMessage | 
	
	testMessage := CCEMessage ackJoinSession.
	
	socketMock send: testMessage serialize.
	
	self assert: (socketMock hasMessage: testMessage serialize).
	self deny: (socketMock hasMessage: (CCEMessage createSessionWith: OrderedDictionary new) serialize)