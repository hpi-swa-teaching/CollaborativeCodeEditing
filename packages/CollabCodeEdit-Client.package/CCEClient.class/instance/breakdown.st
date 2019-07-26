breakdown
breakdown
	self stopHeartbeatEngine.
	self socket close.
	self connected: false.
	self clientUI setToDisconnected