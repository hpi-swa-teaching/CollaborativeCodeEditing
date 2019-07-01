tests
testHeartbeatFromClientgetsAckHeartBeatResponse
	| heartbeatMessage | 
	
	heartbeatMessage := CCEMessage heartbeat.
	
	server onMessage: ( heartbeatMessage serialize ) from: client1.
	self futureSend: #assertMessageHasBeenSent at: 5500 args: #().
	