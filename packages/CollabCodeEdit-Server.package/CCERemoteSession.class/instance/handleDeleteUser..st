client management
handleDeleteUser: aClient
	self removeClient: aClient.
	self broadcastMessage: (CCEMessage deleteUser: aClient identifier)