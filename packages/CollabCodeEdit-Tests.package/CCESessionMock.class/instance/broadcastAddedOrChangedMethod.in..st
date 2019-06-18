request-sending
broadcastAddedOrChangedMethod: aMethodSource in: aClass
	self messages at: aClass put: (aMethodSource, #Changed)