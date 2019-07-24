method edit
buildMethodRemovedEditFrom: anEvent
	^  (CCEMethodRemovedEdit 
			newWith: anEvent itemSelector in: anEvent itemClass)
			package: (PackageOrganizer default packageOfClass: anEvent itemClass)