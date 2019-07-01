sending
send: someData
	Transcript show: 'server send to', self identifier, ' :', someData.
	self socket send: someData