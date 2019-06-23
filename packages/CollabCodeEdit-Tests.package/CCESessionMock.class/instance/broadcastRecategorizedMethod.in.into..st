request-sending
broadcastRecategorizedMethod: aMethodSelector in: aClass into: aCategory
	self messages at: aMethodSelector,aClass put: aCategory