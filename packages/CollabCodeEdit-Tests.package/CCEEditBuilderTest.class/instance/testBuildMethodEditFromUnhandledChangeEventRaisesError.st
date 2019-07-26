methodedit tests
testBuildMethodEditFromUnhandledChangeEventRaisesError
	| event | 
	
	event := AbstractEvent item: CCETestDummy kind: CommentedEvent changeKind.
	self should: [ builder buildMethodEditFrom: event ] raise: Error