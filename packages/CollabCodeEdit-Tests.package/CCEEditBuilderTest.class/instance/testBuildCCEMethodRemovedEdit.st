methodedit tests
testBuildCCEMethodRemovedEdit
	| edit methodSelector |

	methodSelector := #testMethod.

	edit := builder buildMethodEditFrom: (RemovedEvent method: (CCETestDummy compiledMethodAt: methodSelector) 
		selector: methodSelector class: CCETestDummy).

	self assert: edit editContent equals: methodSelector.
	self assert: (PackageOrganizer default packageOfClass: CCETestDummy) equals: edit package.
	self assert: (edit isKindOf: CCEMethodRemovedEdit)