classedit tests
testBuildCCEClassRemovedEdit
	| event edit |
	
	event := RemovedEvent item: CCETestDummy kind: RemovedEvent classKind.
	edit := builder buildClassRemovedEditFrom: event.	

	self assert: edit editContent equals: CCETestDummy.
	self assert: (PackageOrganizer default packageOfClass: CCETestDummy) equals: edit package.
	self assert: (edit isKindOf: CCEClassRemovedEdit)
	
	
	