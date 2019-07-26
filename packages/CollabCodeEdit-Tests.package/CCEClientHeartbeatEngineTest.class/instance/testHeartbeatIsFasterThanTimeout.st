tests
testHeartbeatIsFasterThanTimeout
	self assert: CCEClientHeartbeatEngine heartbeatPeriod < ( Socket standardTimeout * 1000 ).