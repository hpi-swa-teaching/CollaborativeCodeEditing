tests
testBreakdown
	CCEServer
		breakdown;
		start.
	self deny: CCEServer currentInstance isNil.
	
	CCEServer breakdown.
	self assert: CCEServer currentInstance isNil