request handling
CCEheartbeat: anOrderedDictionary from: aCCERemoteClient
	aCCERemoteClient sendMessage: CCEMessage ackHeartbeat.
	Transcript show: 'heartbeat from: ', aCCERemoteClient; cr