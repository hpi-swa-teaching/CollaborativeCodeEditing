tests
testEditOutOfScopeWontBeApplied
	| edit |
	
	edit:= CCEMethodAddedOrModifiedEdit newWith: testMethod in: testClass.
	session scope: #().
	self should: [ edit securelyApplyIn: session ] 
				raise: Error.
	self deny: (testClass canUnderstand: testMethod) 