class edits
buildClassAddedEditFrom: anEvent
	^  (CCEClassAddedEdit newWith: anEvent item) 
		package: (PackageOrganizer default packageOfClass: anEvent item)