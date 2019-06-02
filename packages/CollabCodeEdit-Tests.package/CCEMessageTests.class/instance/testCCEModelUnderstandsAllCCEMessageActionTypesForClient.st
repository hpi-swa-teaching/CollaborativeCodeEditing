tests
testCCEModelUnderstandsAllCCEMessageActionTypesForClient
	CCEMessage serverMsgTypes valuesDo: [ :msgType | 
		self assert: (CCEModel canUnderstand: (CCEMessage prefix , msgType) asSymbol) ]
