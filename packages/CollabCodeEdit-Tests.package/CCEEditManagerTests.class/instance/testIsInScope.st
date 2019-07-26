tests
testIsInScope
	| editMethod editClass |
	
	CCETestDummy compile: #testMethodScope.
	editMethod := CCEEditBuilder buildMethodModifiedOrAddedEditFrom: 
		(ModifiedEvent 
			method: (CCETestDummy compiledMethodAt: #testMethodScope) 
			selector: #testMethodScope 
			class: CCETestDummy).
		
	editClass := CCEEditBuilder buildClassModifiedOrAddedEditFrom:
		(AddedEvent item: CCEModel kind: AbstractEvent classKind).
	
	self assert: (packageManager isInScope: editMethod).
	self deny: (packageManager isInScope: editClass)