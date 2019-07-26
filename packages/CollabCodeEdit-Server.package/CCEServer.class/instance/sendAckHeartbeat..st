request handling
sendAckHeartbeat: aCCERemoteClient
	(self clients includes: aCCERemoteClient) ifTrue: [
		aCCERemoteClient sendMessage: CCEMessage ackHeartbeat ]