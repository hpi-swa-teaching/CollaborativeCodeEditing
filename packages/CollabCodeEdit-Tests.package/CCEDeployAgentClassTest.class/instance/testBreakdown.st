testing
testBreakdown
	CCEDeployAgent
		breakdown;
		start.
	CCEDeployAgent currentInstance ifNil: [ self fail ].
	
	CCEDeployAgent breakdown.
	CCEDeployAgent currentInstance ifNotNil: [ self fail ]