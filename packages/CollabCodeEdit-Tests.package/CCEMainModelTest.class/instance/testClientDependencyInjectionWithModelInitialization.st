tests backend
testClientDependencyInjectionWithModelInitialization
	| model | 
	
	model := CCEModel new.
	
	self assert: CCEClient default equals: model session client
	
	