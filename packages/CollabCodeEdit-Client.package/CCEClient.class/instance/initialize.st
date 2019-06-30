initialize-release
initialize 
	self connected: false;
		heartbeat: ( CCEClientHeartbeat new client: self; setUp )