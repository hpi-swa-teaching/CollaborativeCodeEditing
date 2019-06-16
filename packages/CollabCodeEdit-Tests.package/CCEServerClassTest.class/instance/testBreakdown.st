tests
testBreakdown
	CCEServer
		breakdown;
		start.
	CCEServer currentInstance ifNil: [ self fail ].
	
	CCEServer breakdown.
	CCEServer currentInstance ifNotNil: [ self fail ]