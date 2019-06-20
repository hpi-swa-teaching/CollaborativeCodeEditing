messaging
ackJoinSessionPayload
	^ OrderedDictionary newFrom: {
		#scope -> self scope.
		#checksum -> self initialChecksum.
		#collaborators -> self createCollaboratorsListWithConsistencys.
		#token -> self token }