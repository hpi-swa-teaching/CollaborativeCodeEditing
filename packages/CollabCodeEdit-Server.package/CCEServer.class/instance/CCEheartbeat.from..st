actions
CCEheartbeat: anOrderedDictionary from: aCCERemoteClient
	"this delay solves the problem, that the server imediatly drops the connection when the message arrives after estblishing the connection"
	self
		futureSend: #sendAckHeartbeat:
		at: 5000
		args: { aCCERemoteClient }