client management
handleDeleteUser: aClient
	self removeClient: aClient.
	self broadcastMsg: (CCEMessage deleteUser: aClient identifier).