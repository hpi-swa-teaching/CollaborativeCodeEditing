classedit tests
testBuildCCEClassRenamedEdit
	| edit |
	
	edit := builder buildClassRenamedEditFrom: (RenamedEvent class: CCETestDummy category: 'CollabCodeEdit-Tests' oldName: 'CCETestDummy1' newName: 'CCETestDummy').

	self assert: edit renamedClass equals: CCETestDummy.
	self assert: edit oldName equals: 'CCETestDummy1'.
	self assert: edit newName equals: 'CCETestDummy'.
	self assert: (PackageOrganizer default packageOfClass: CCETestDummy) equals: edit package.
	self assert: (edit isKindOf: CCEClassRenamedEdit)