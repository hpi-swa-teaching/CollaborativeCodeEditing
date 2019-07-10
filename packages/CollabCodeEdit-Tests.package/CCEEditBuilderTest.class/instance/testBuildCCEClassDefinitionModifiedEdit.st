classedit tests
testBuildCCEClassDefinitionModifiedEdit
	| event edit |
	
	event := ModifiedClassDefinitionEvent classDefinitionChangedFrom: CCETestDummy to: CCEModel.
	
	edit := builder buildClassModifiedEditFrom: event.
	
	self assert: (edit editContent equalsClass: CCEModel).
	self assert: (PackageOrganizer default packageOfClass: CCEModel) equals: edit package.
	self assert: (edit isKindOf: CCEClassModifiedEdit)
	
	
	