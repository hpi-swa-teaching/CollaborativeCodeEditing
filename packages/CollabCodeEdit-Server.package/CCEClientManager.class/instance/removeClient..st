client management
removeClient: aClient
	self clientsMutex critical: [ self clients remove: aClient ifAbsent: [] ]