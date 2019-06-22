tests
testEditOutOfScopeWontBeApplied
	| edit |
	
	edit:= CCEMethodAddedOrModifiedEdit newWith: self testMethod in: self testClass.
	CCEPackageManager default scope: #().
	self should: [ edit securelyApply ] 
		raise: Error.
	self deny: (CCETestDummy canUnderstand: self testMethod) 