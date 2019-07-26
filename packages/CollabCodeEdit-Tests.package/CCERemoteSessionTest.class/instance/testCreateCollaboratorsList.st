tests
testCreateCollaboratorsList	
	remoteSession addClient: (CCERemoteClient new identifier: 'aKey'; isConsistent: true).
	remoteSession addClient: (CCERemoteClient new identifier: 'anotherKey'; isConsistent: false).
	
	self assert: (remoteSession createCollaboratorsListWithConsistencies =  
		(OrderedCollection newFrom: {
			OrderedDictionary newFrom: { #id -> 'aKey' . #isConsistent -> true }.
			OrderedDictionary newFrom: { #id -> 'anotherKey' . #isConsistent -> false } }))