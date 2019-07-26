tests
testStepSendsHeartbeatToServer
	self assert: networkInterface messages isEmpty.
	
	cceClientHeartbeat step.
	self assert: ( networkInterface hasMessageOfType: #heartbeat:from: ).
	
	networkInterface clear