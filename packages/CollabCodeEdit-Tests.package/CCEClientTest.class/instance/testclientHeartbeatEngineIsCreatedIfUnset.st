tests
testclientHeartbeatEngineIsCreatedIfUnset
	| heartbeatEngine |
	
	heartbeatEngine := client heartbeatEngine.
	client heartbeatEngine: nil.
	self assert: ( client heartbeatEngine notNil ).
	client heartbeatEngine: heartbeatEngine