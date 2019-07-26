tests
testHeartbeatIsFasterThanTimeout
	self assert: CCEHeartbeatEngine heartbeatPeriod < (Socket standardTimeout * 1000)