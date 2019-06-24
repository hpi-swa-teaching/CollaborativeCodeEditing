testing
testBreakdown
	CCEDeployAgent
		breakdown;
		start.
	self deny: CCEDeployAgent currentInstance isNil.
	
	CCEDeployAgent breakdown.
	self assert: CCEDeployAgent currentInstance isNil