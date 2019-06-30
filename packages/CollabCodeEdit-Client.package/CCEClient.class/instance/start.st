startup
start
	self startConnectionTo: CCEClient defaultServerURI.
	self startHeartBeat.