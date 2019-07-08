classedit tests
testBuildCCEClassRecategorizedEdit
	| event edit |
	
	event := RecategorizedEvent class: CCETestDummy category: 'CollabCodeEdit-Client' oldCategory: 'CollabCodeEdit-Tests'.
	
	edit := builder buildClassEditFrom: event.
	
	self assert: edit oldCategory equals: 'CollabCodeEdit-Tests'.
	self assert: edit recategorizedClass equals: CCETestDummy.
	self assert: (PackageOrganizer default packageOfClass: CCETestDummy) equals: edit package.
	self assert: (edit isKindOf: CCEClassRecategorizedEdit)
	
	
	