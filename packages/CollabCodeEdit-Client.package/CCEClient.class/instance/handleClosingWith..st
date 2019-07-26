startup
handleClosingWith: anObject
	self clientUI setToDisconnected.
	Transcript show: 'closing socket: ', anObject