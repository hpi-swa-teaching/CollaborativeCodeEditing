sending
sendMessage: aCCEMessage
	Transcript show: aCCEMessage serialize.
	self send: aCCEMessage serialize