tests
testCCEServerUnderstandsAllCCEMessageActionTypesForServer
	CCEMessage clientMessageTypes valuesDo: [ :msgType | 
		self assert: (CCEServer canUnderstand: (CCEMessage prefix , msgType) asSymbol) ]
