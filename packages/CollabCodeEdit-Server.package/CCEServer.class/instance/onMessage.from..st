request handling
onMessage: someData from: aCCERemoteClient
	self
		performMessage: ([ (CCEMessage deserialize: someData) ]
			ifError: [ :err :receiver | ^ self onError: err from: aCCERemoteClient ])
		from: aCCERemoteClient