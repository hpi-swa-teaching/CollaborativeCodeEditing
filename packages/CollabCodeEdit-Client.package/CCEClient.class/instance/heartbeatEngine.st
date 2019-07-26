accessing
heartbeatEngine
	 ^ heartbeatEngine ifNil: [ 
		CCEHeartbeatEngine new 
			client: self;
			setUp;
			yourself ]