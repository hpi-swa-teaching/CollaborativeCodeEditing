initialize-release
initialize 
	self 
		ui: ( CCEClientUI new 
			client: self; 
			serverURI: self class defaultServerURI;
			yourself );
		connected: false;
		heartbeatEngine: ( CCEHeartbeatEngine new 
			client: self; 
			setUp; 
			yourself)

