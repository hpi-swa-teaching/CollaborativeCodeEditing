as yet unclassified
setUp
	networkInterface := CCESocketMock new.
	cceClientHeartbeat := CCEClientHeartbeat new client: ( CCEClient new socket: networkInterface )