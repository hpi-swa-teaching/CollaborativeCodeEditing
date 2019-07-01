sending
send: someData
	Transcript show: 'sending: ', someData; cr.
	self socket send: someData