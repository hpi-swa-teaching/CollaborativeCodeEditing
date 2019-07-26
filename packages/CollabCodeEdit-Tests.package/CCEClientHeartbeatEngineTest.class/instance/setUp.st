running
setUp
	networkInterface := CCESocketMock new.
	cceClientHeartbeat := CCEClientHeartbeatEngine new client: ( CCEClient new socket: networkInterface )