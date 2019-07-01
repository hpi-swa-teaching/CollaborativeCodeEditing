sending
broadcastMessage: aCCEMessage
	self clientsMutex critical: [ self clients do: [ :client | client sendMessage: aCCEMessage ] ]