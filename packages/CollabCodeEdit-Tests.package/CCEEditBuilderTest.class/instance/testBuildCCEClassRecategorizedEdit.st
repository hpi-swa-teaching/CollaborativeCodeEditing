classedit tests
testBuildCCEClassRecategorizedEdit
	| event edit |
	
	event := RecategorizedEvent class: CCETestDummy category: CCETestDummy category oldCategory: 'CollabCodeEdit-Tests'.
	
	edit := builder buildClassModifiedEditFrom: event.
	
	self assert: (edit editContent equalsClass: CCETestDummy).
	self assert: (PackageOrganizer default packageOfClass: CCETestDummy) equals: edit package.
	self assert: (edit isKindOf: CCEClassModifiedEdit)
	
	
	