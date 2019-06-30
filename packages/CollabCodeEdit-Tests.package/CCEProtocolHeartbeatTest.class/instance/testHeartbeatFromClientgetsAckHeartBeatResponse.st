tests
testHeartbeatFromClientgetsAckHeartBeatResponse
	| heartbeatMessage | 
	
	heartbeatMessage := CCEMessage heartbeat.
	
	server onMessage: ( heartbeatMessage serialize ) from: client1.
	
	self assert: ( networkInterface1 hasMessageOfType: #ackHeartbeat ).
	
	networkInterface1 clear