sending
broadcastMessage: aCCEMessage without: aClient
	self clientsMutex critical: [ self clients do: [ :client | client sendMessage: aCCEMessage] without: aClient]