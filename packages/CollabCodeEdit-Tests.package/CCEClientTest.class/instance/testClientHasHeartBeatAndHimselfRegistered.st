tests
testClientHasHeartBeatAndHimselfRegistered
	self assert: ( client heartbeat isKindOf: CCEClientHeartbeat).
	self assert: client equals: client heartbeat client.