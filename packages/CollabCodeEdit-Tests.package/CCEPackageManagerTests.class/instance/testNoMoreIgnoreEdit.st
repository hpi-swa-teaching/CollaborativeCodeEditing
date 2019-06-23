tests
testNoMoreIgnoreEdit
	| edit1 |
	
	edit1 := CCEMethodRemovedEdit newWith: #testMethod in: CCETestDummy.
	packageManager ignoreEdit: edit1.
	self assert: (packageManager shouldBeIgnored: edit1).	
	packageManager noMoreIgnoreEdit: edit1.
	self deny: (packageManager shouldBeIgnored: edit1)