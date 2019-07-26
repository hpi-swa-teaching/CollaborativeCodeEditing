tests
testCreateSessionPayload
	| expectedPayload | 
	
	remoteSession addClient: (CCERemoteClient new
		identifier: 'aKey';
		isConsistent: true).
	remoteSession addClient: (CCERemoteClient new
		identifier: 'anotherKey';
		isConsistent: false).
	
	expectedPayload := OrderedDictionary newFrom: {
		#scope -> remoteSession scope .
		#checksum -> remoteSession initialChecksum .
		#collaborators -> remoteSession createCollaboratorsListWithConsistencies }.	
	
	self assert: (expectedPayload = remoteSession createSessionPayload)