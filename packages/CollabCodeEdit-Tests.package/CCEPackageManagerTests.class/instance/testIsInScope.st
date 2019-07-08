tests
testIsInScope
	| editMethod editClass |
	
	editMethod := CCEEditBuilder new buildMethodModifiedOrAddedEditFrom: 
		(ModifiedEvent 
			method: (CCETestDummy compiledMethodAt: #testMethodScope) 
			selector: #testMethodScope 
			class: CCETestDummy).
		
	editClass := CCEEditBuilder new buildClassAddedEditFrom: 
		(AddedEvent item: CCEModel kind: AbstractEvent classKind).
	
	self assert: (packageManager isInScope: editMethod).
	self deny: (packageManager isInScope: editClass)