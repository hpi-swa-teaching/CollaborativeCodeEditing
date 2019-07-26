tests
testClientHasHeartBeatAndHimselfRegistered
	self 
		assert: (client heartbeatEngine isKindOf: CCEHeartbeatEngine);
		assert: client equals: client heartbeatEngine client