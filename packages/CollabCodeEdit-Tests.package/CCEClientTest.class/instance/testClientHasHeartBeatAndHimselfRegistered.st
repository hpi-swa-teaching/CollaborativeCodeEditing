tests
testClientHasHeartBeatAndHimselfRegistered
	self assert: ( client heartbeat isKindOf: CCEClientHeartbeatEngine ).
	self assert: client equals: client heartbeat client.