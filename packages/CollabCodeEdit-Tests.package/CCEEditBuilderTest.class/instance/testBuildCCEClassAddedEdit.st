classedit tests
testBuildCCEClassAddedEdit
	| event edit |
	
	event := AddedEvent item: CCETestDummy kind: AddedEvent classKind.
	
	edit := CCEEditBuilder buildClassModifiedOrAddedEditFrom: event.
	
	self assert: (edit editContent equalsClass: CCETestDummy).
	self assert: (PackageOrganizer default packageOfClass: CCETestDummy) equals: edit package.
	self assert: (edit isKindOf: CCEClassModifiedEdit)