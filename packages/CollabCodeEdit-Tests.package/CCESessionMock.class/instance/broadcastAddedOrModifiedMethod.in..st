request-sending
broadcastAddedOrModifiedMethod: aMethodSource in: aClass
	self messages at: (aClass name, #AddedOrModified) put: aMethodSource