as yet unclassified
setUp
	networkInterface := CCESocketMock new.
	cceClientHeartbeat := CCEHeartbeatEngine new client: ( CCEClient new socket: networkInterface )