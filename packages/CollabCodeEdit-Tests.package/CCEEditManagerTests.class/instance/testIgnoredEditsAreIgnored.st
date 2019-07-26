tests
testIgnoredEditsAreIgnored
	| edit1 edit2 |
	
	edit1 := CCEMethodRemovedEdit newWith: #testMethod in: CCETestDummy.
	edit2 := CCEMethodAddedOrModifiedEdit newWith: #testMethod in: CCETestDummy.
	packageManager ignoreEdit: edit1.
	
	self 
		assert: (packageManager shouldBeIgnored: edit1);	
		deny: (packageManager shouldBeIgnored: edit2).
	packageManager stopIgnoringEdit: edit1