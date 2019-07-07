as yet unclassified
testBuildEditFromUnhandledChangeEventRaisesError
	| event | 
	
	event := AbstractEvent item: CCETestDummy kind: CommentedEvent changeKind.
	
	self should: [ builder buildEditFrom: event ] raise: Error