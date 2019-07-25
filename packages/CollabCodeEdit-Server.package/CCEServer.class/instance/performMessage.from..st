request handling
performMessage: aCCEMessage from: aCCERemoteClient
	[ self
		perform: (CCEMessage prefix , aCCEMessage type) asSymbol
		with: aCCEMessage payload
		with: aCCERemoteClient ]
		ifError: [ :err :receiver | ^ self onError: err from: aCCERemoteClient ]