client management
handleDeleteUser: aCCERemoteClient
	self removeClient: aCCERemoteClient.
	self broadcastMessage: (CCEMessage deleteUser: aCCERemoteClient identifier)