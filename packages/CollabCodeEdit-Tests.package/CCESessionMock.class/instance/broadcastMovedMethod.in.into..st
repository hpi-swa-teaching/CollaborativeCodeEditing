request-sending
broadcastMovedMethod: aMethodSelector in: aClass into: aCategory
	self messages at: aMethodSelector,aClass put: aCategory