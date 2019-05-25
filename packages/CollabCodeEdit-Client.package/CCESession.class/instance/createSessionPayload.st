request-sending
createSessionPayload
	^ OrderedDictionary newFrom: {
		#scope -> self scope.
		#checksum -> self checksum}