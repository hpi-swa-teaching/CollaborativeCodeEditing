classedit tests
testBuildCCEClassRecategorizedEdit
	| edit |

	edit := builder buildClassEditFrom: (RecategorizedEvent class: CCETestDummy category: CCETestDummy category oldCategory: 'CollabCodeEdit-Tests').
	self assert: (edit editContent equalsClass: CCETestDummy).
	self assert: (PackageOrganizer default packageOfClass: CCETestDummy) equals: edit package.
	self assert: (edit isKindOf: CCEClassModifiedEdit)