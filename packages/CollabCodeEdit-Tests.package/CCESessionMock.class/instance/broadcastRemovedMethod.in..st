request-sending
broadcastRemovedMethod: aMethodSelector in: aClass
	self changesDict at: aClass put: (aMethodSelector, #Removed)