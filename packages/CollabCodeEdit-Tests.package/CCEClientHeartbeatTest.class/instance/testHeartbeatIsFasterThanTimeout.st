as yet unclassified
testHeartbeatIsFasterThanTimeout
	self assert: CCEClientHeartbeat heartbeatPeriod < ( 45 * 1000 ).