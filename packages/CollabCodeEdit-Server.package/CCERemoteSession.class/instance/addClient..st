client management
addClient: aCCERemoteClient
	super addClient: aCCERemoteClient.
	
	aCCERemoteClient session: self