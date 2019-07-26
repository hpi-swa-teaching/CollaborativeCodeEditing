initialize-release
initialize 
	self 
		clientUI: (CCEClientUI new 
			client: self; 
			serverURI: self class defaultServerURI;
			yourself);
		connected: false;
		heartbeatEngine: (CCEHeartbeatEngine new 
			client: self; 
			setUp; 
			yourself)

