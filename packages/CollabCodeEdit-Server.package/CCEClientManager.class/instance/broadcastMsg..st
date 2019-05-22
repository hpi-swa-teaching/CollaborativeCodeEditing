sending
broadcastMsg: aCCEMessage
	self clientsMutex critical: [ self clients do: [ :client | client sendMsg: aCCEMessage ] ]