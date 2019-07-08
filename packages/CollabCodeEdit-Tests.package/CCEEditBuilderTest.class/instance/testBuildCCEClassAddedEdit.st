classedit tests
testBuildCCEClassAddedEdit
	| event edit |
	
	event := AddedEvent item: CCETestDummy kind: AddedEvent classKind.
	
	edit := builder buildClassEditFrom: event.
	
	self assert: edit editContent equals: CCETestDummy.
	self assert: (PackageOrganizer default packageOfClass: CCETestDummy) equals: edit package.
	self assert: (edit isKindOf: CCEClassAddedEdit)
	
	
	