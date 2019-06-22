request-sending
broadcastAddedOrModifiedMethod: aMethodSource in: aClass
	self messages at: (aClass, #AddedOrModified) put: aMethodSource