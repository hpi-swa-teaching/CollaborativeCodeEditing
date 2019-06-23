tests
testEditOutOfScopeWontBeApplied
	| edit |
	
	edit:= CCEMethodAddedOrModifiedEdit newWith: testMethod in: testClass.
	session scope: #().
	self should: [ edit securelyApplyin: session ] 
				raise: Error.
	self deny: (testClass canUnderstand: testMethod) 