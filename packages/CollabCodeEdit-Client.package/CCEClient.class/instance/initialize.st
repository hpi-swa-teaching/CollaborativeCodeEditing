initialize-release
initialize 
	self ui: ( CCEClientUI new client: self; serverURI: CCEClient defaultServerURI ).
	self connected: false;
		heartbeat: ( CCEClientHeartbeatEngine new client: self; setUp )

