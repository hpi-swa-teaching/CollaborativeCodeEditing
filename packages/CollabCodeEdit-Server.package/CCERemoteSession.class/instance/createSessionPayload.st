as yet unclassified
createSessionPayload
	^ OrderedDictionary newFrom: {
		#scope -> self scope.
		#checksum -> self initialChecksum}