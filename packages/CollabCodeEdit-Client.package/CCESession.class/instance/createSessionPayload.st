session-managment
createSessionPayload
	^ OrderedDictionary newFrom: {
		#scope -> self scope .
		#checksum -> self checksum .
		#id -> self imageAccount humanReadableName }