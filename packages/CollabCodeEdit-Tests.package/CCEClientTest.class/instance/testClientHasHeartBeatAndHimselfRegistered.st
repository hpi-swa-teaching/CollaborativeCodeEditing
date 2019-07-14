tests
testClientHasHeartBeatAndHimselfRegistered
	self assert: ( client heartbeatEngine isKindOf: CCEHeartbeatEngine ).
	self assert: client equals: client heartbeatEngine client.