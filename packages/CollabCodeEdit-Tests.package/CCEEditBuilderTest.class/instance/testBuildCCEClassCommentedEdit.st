classedit tests
testBuildCCEClassCommentedEdit
	| event edit |
	
	event := CommentedEvent item: CCETestDummy kind: CommentedEvent classKind.
	
	edit := builder buildClassModifiedEditFrom: event.
	
	self assert: (edit editContent equalsClass: CCETestDummy).
	self assert: (PackageOrganizer default packageOfClass: CCETestDummy) equals: edit package.
	self assert: (edit isKindOf: CCEClassModifiedEdit)