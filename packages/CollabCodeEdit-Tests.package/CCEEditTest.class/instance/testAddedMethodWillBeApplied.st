tests
testAddedMethodWillBeApplied
	CCEPackageManager default scope: #('CollabCodeEdit-Tests').
	[ (CCEMethodAddedOrChangedEdit newWith: #testMethod in: CCETestDummy name) apply.
	self assert: (CCETestDummy canUnderstand: #testMethod) ]
		ensure: [ CCETestDummy removeSelector: #testMethod ]