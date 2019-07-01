initialize-release
initialize 
	self connected: false;
		heartbeat: ( CCEClientHeartbeatEngine new client: self; setUp )