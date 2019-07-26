session-managment
createSessionPayload
	^ OrderedDictionary newFrom: {
		#scope -> self scope .
		#checksum -> self checksum .
		#id -> self localAccount humanReadableName }