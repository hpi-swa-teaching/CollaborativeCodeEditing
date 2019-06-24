sending
sendMsg: aCCEMessage
	Transcript show: aCCEMessage serialize.
	self send: aCCEMessage serialize