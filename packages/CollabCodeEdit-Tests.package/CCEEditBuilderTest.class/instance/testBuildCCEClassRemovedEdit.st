as yet unclassified
testBuildCCEClassRemovedEdit
	| event edit |
	
	event := RemovedEvent item: CCETestDummy kind: RemovedEvent classKind.
	edit := builder buildEditFrom: event.	

	self assert: edit editContent equals: CCETestDummy.
	self assert: (edit isKindOf: CCEClassRemovedEdit)
	
	
	