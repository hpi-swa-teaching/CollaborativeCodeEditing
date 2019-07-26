method edit
buildMethodRecategorizedEditFrom: anEvent
	^  (CCEMethodRecategorizedEdit 
		newWith: anEvent itemSelector to: anEvent itemProtocol in: anEvent itemClass)
		package: (PackageOrganizer default packageOfClass: anEvent itemClass)