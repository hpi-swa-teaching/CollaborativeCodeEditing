tests
testCreateCollaboratorsList	
	| expectedList | 
	
	expectedList := OrderedCollection newFrom: {
		OrderedDictionary newFrom: {#id -> 'aKey' . #isConsistent -> true}.
		OrderedDictionary newFrom: {#id -> 'anotherKey' . #isConsistent -> false}}.
	
	remoteSession addClient: (CCERemoteClient new identifier: 'aKey'; isConsistent: true).
	remoteSession addClient: (CCERemoteClient new identifier: 'anotherKey'; isConsistent: false).
	
	self assert: (expectedList = remoteSession createCollaboratorsListWithConsistencys).