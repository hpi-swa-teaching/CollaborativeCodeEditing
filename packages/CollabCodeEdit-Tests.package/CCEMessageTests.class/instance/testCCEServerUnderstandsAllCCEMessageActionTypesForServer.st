tests
testCCEServerUnderstandsAllCCEMessageActionTypesForServer
	CCEMessage clientMsgTypes valuesDo: [ :msgType | 
		self assert: (CCEServer canUnderstand: (CCEMessage prefix , msgType) asSymbol) ].
