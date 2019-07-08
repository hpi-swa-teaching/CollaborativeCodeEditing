classedit tests
testBuildCCEClassDefinitionModifiedEdit
	| event edit |
	
	event := ModifiedClassDefinitionEvent classDefinitionChangedFrom: CCETestDummy to: CCEModel.
	
	edit := builder buildClassEditFrom: event.
	
	self assert: (edit editContent at: #newClass) equals: CCEModel.
	self assert: (edit editContent at: #oldClass) equals: CCETestDummy.
	self assert: (PackageOrganizer default packageOfClass: CCEModel) equals: edit package.
	self assert: (edit isKindOf: CCEClassDefinitionModifiedEdit)
	
	
	