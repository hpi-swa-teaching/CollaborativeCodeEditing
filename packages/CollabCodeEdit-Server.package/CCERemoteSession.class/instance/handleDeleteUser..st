client management
handleDeleteUser: aClient
	self broadcastMsg: (CCEMessage deleteUser: aClient identifier).
	self removeClient: aClient.