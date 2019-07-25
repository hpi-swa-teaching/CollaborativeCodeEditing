request handling
onMessage: someData from: aCCERemoteClient
	| message |
	
	message := [ (CCEMessage deserialize: someData) ]
		ifError: [ :err :receiver | ^ self onError: err from: aCCERemoteClient ].
	
	[ self
		perform: (CCEMessage prefix , message type) asSymbol
		with: message payload
		with: aCCERemoteClient ]
		ifError: [ :err :receiver | ^ self onError: err from: aCCERemoteClient ]