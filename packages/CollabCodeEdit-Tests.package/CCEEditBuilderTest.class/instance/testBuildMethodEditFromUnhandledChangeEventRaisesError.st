methodedit tests
testBuildMethodEditFromUnhandledChangeEventRaisesError
	| event | 
	
	event := AbstractEvent item: CCETestDummy kind: CommentedEvent changeKind.
	
	self should: [ CCEEditBuilder buildMethodEditFrom: event ] raise: Error