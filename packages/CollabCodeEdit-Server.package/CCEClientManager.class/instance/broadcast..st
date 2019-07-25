sending
broadcast: anObject
	self clientsMutex critical: [ self clients
		do: [ :client | client send: anObject ] ]