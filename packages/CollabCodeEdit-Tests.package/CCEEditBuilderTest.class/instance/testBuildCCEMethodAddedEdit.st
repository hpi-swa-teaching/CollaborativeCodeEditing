methodedit tests
testBuildCCEMethodAddedEdit
	| event edit methodText |
	
	methodText := (CCETestDummy compiledMethodAt: #testMethod) getSource.
	event := AddedEvent method: (CCETestDummy compiledMethodAt: #testMethod) class: CCETestDummy.
	
	edit := builder buildMethodEditFrom: event.
	
	self assert: edit editContent equals: methodText.
	self assert: (PackageOrganizer default packageOfClass: CCETestDummy) equals: edit package.
	self assert: (edit isKindOf: CCEMethodAddedOrModifiedEdit)
	
	
	