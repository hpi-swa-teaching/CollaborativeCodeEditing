tests
testEditOutOfScopeWontBeApplied
	| edit |
	
	edit:= CCEMethodAddedOrModifiedEdit newWith: testMethod in: testClass.
	packageManager scope: #().
	self should: [ edit securelyApplyIn: session ] 
				raise: Error.
	self deny: (testClass canUnderstand: testMethod) 