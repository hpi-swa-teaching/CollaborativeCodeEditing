tests backend
testClientDependencyInjectionWithModelInitialization
	self assert: CCEClient default equals: (CCEModel new) session client
	
	