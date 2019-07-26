messaging
createSessionPayload
	^ OrderedDictionary newFrom: {
		#scope -> self scope .
		#checksum -> self initialChecksum .
		#collaborators -> self createCollaboratorsListWithConsistencies }