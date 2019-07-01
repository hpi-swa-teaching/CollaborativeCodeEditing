sending
send: someData
	Transcript show: 'client send: ', someData; cr.
	self socket send: someData