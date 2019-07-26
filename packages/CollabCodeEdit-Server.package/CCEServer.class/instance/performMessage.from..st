request handling
performMessage: aCCEMessage from: aCCERemoteClient
	[ self
		perform: (CCEMessage prefix , aCCEMessage type) asSymbol
		with: aCCEMessage payload
		with: aCCERemoteClient ]
		ifError: [ :error :receiver | ^ self onError: error from: aCCERemoteClient ]