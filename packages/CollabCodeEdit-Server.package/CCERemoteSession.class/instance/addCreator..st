client management
addCreator: aRemoteClient
	self addClient: aRemoteClient.
	aRemoteClient isConsistent: true.