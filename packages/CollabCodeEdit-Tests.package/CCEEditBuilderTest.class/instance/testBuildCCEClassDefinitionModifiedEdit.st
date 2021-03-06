classedit tests
testBuildCCEClassDefinitionModifiedEdit
	| edit |

	edit := builder buildClassEditFrom: ( ModifiedClassDefinitionEvent classDefinitionChangedFrom: CCETestDummy to: CCEModel ).

	self assert: (edit editContent equalsClass: CCEModel).
	self assert: (PackageOrganizer default packageOfClass: CCEModel) equals: edit package.
	self assert: (edit isKindOf: CCEClassModifiedEdit)