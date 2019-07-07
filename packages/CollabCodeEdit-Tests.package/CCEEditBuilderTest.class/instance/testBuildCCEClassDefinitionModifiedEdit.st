as yet unclassified
testBuildCCEClassDefinitionModifiedEdit
	| event edit |
	
	event := ModifiedClassDefinitionEvent classDefinitionChangedFrom: CCETestDummy to: CCEModel.
	
	edit := builder buildEditFrom: event.
	
	self assert: (edit editContent at: #newClass) equals: CCEModel.
	self assert: (edit editContent at: #oldClass) equals: CCETestDummy.
	self assert: (edit isKindOf: CCEClassDefinitionModifiedEdit)
	
	
	