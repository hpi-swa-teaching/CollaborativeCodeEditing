tests
testClientHasHeartBeatAndHimselfRegistered
	self assert: ( client heartbeatEngine isKindOf: CCEClientHeartbeatEngine ).
	self assert: client equals: client heartbeatEngine client.