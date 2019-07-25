request handling
onMessage: aString from: aCCERemoteClient
	self
		performMessage: ([ (CCEMessage deserialize: aString) ]
			ifError: [ :error :receiver | ^ self onError: error from: aCCERemoteClient ])
		from: aCCERemoteClient