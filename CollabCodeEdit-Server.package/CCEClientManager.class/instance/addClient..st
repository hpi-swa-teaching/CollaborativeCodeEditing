client management
addClient: aClient
	self clientsMutex critical: [ self clients add: aClient ]