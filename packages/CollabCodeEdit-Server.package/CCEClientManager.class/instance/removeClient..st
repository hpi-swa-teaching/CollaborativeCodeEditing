client management
removeClient: aCCERemoteClient
	self clientsMutex critical: [ self clients
		remove: aCCERemoteClient
		ifAbsent: [ ] ]