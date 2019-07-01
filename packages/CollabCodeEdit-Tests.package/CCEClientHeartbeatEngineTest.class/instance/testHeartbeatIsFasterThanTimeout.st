as yet unclassified
testHeartbeatIsFasterThanTimeout
	self assert: CCEClientHeartbeatEngine heartbeatPeriod < ( Socket standardTimeout * 1000 ).