classedit tests
testBuildCCEClassRemovedEdit
	| event edit |
	
	event := RemovedEvent item: CCETestDummy kind: RemovedEvent classKind.
	edit := CCEEditBuilder buildClassRemovedEditFrom: event.	

	self assert: edit editContent equals: CCETestDummy name.
	self assert: (PackageOrganizer default packageOfClass: CCETestDummy) equals: edit package.
	self assert: (edit isKindOf: CCEClassRemovedEdit)