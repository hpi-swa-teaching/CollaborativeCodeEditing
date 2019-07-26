classedit tests
continueCCEClassAddedOrCommentedTestFrom: anEvent
	| edit |
	
	edit := builder buildClassModifiedEditFrom: anEvent.
	
	self assert: (edit editContent equalsClass: CCETestDummy).
	self assert: (PackageOrganizer default packageOfClass: CCETestDummy) equals: edit package.
	self assert: (edit isKindOf: CCEClassModifiedEdit)