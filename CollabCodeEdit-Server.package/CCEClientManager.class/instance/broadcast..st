sending
broadcast: someData
	self clientsMutex critical: [ self clients do: [ :client | client send: someData ] ]