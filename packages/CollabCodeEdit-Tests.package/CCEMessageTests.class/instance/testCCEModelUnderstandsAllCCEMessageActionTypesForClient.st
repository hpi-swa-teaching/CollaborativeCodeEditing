tests
testCCEModelUnderstandsAllCCEMessageActionTypesForClient
	CCEMessage serverMessageTypes valuesDo: [ :msgType | 
		self assert: (CCEModel canUnderstand: (CCEMessage prefix , msgType) asSymbol) ]
