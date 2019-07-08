classedit tests
testBuildCCEClassCommentedEdit
	| event edit |
	
	event := CommentedEvent item: CCETestDummy kind: CommentedEvent classKind.
	
	edit := builder buildClassEditFrom: event.
	
	self assert: edit editContent equals: CCETestDummy.
	self assert: (PackageOrganizer default packageOfClass: CCETestDummy) equals: edit package.
	self assert: (edit isKindOf: CCEClassCommentedEdit)
	
	
	