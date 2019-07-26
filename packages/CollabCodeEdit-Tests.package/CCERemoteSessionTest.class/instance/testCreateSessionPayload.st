tests
testCreateSessionPayload
	remoteSession addClient: ( CCERemoteClient new identifier: 'aKey'; isConsistent: true ).
	remoteSession addClient: ( CCERemoteClient new identifier: 'anotherKey'; isConsistent: false ).
	
	self assert: ( remoteSession createSessionPayload = (OrderedDictionary newFrom: {
		#scope -> remoteSession scope.
		#checksum -> remoteSession initialChecksum.
		#collaborators -> remoteSession createCollaboratorsListWithConsistencys }) )