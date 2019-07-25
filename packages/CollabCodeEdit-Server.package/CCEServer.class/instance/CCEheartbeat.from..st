actions
CCEheartbeat: anOrderedDictionary from: aCCERemoteClient
	"this delay solves the problem that the server immediately drops the connection when the message arrives after establishing the connection"
	self
		futureSend: #sendAckHeartbeat:
		at: 5000
		args: { aCCERemoteClient }