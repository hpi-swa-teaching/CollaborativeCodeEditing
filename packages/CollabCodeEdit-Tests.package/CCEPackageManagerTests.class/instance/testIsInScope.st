tests
testIsInScope
	| editMethod editClass |
	
	CCETestDummy compile: #testMethodScope.
	editMethod := CCEEditBuilder new buildMethodModifiedOrAddedEditFrom: 
		(ModifiedEvent 
			method: (CCETestDummy compiledMethodAt: #testMethodScope) 
			selector: #testMethodScope 
			class: CCETestDummy).
		
	editClass := CCEEditBuilder new buildClassModifiedEditFrom:
		(AddedEvent item: CCEModel kind: AbstractEvent classKind).
	
	self assert: (packageManager isInScope: editMethod).
	self deny: (packageManager isInScope: editClass)