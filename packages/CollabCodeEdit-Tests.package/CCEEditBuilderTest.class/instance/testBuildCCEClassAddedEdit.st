as yet unclassified
testBuildCCEClassAddedEdit
	| event edit |
	
	event := AddedEvent item: CCETestDummy kind: AddedEvent classKind.
	
	edit := builder buildEditFrom: event.
	
	self assert: edit editContent equals: CCETestDummy.
	self assert: (edit isKindOf: CCEClassAddedEdit)
	
	
	