methodedit tests
continueCCEMethodAddedOrModifiedTestFrom: anEvent
	| edit |
	
	edit := builder buildMethodEditFrom: anEvent.

	self assert: edit editContent equals: (CCETestDummy compiledMethodAt: #testMethod) getSource.
	self assert: (PackageOrganizer default packageOfClass: CCETestDummy) equals: edit package.
	self assert: (edit isKindOf: CCEMethodAddedOrModifiedEdit)