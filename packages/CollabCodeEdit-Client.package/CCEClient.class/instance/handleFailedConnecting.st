startup
handleFailedConnecting
	self 
		connected: false; 
		error: 'error while connecting'.
	self clientUI setToDisconnected