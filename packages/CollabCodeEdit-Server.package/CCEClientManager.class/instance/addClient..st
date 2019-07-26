client management
addClient: aCCERemoteClient
	self clientsMutex critical: [ self clients
		add: aCCERemoteClient ]