request-sending
broadcastMovedMethod: aMethodSelector in: aClass into: aCategory
	self changesDict at: aMethodSelector,aClass put: aCategory