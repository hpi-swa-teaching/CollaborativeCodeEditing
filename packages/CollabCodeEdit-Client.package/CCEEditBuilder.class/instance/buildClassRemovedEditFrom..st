class edits
buildClassRemovedEditFrom: anEvent
	^ (CCEClassRemovedEdit newWith: anEvent item) 
		package: (PackageOrganizer default packageOfClass: anEvent item)