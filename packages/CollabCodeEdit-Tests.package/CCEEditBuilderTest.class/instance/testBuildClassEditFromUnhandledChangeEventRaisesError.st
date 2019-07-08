classedit tests
testBuildClassEditFromUnhandledChangeEventRaisesError
	| event | 
	
	event := AbstractEvent item: CCETestDummy kind: CommentedEvent changeKind.	
	
	self should: [ builder buildClassEditFrom: event ] raise: Error