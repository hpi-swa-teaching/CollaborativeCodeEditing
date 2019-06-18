request-sending
broadcastRemovedMethod: aMethodSelector in: aClass
	self messages at: aClass put: (aMethodSelector, #Removed)