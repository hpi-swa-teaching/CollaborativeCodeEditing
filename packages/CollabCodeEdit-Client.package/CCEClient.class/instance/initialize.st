initialize-release
initialize 
	self ui: ( CCEClientUI new client: self; serverURI: CCEClient defaultServerURI ).
	self connected: false;
		heartbeatEngine: ( CCEHeartbeatEngine new client: self; setUp )

