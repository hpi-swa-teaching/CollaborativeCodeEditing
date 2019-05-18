tests
testResetShouldNilInstanceVariables
	CCESession default
		scope: #('Signals'); 
		checksum: 42.
		
	CCESession reset.
	
	self assert: (CCESession default scope) equals: nil.
	self assert: (CCESession default checksum) equals: nil.
