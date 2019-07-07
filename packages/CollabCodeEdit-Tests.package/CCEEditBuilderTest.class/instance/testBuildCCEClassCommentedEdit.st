as yet unclassified
testBuildCCEClassCommentedEdit
	| event edit |
	
	event := CommentedEvent item: CCETestDummy kind: CommentedEvent classKind.
	
	edit := builder buildEditFrom: event.
	
	self assert: edit editContent equals: CCETestDummy.
	self assert: (edit isKindOf: CCEClassCommentedEdit)
	
	
	