class edits
buildClassRemovedEditFrom: anEvent
	^ (CCEClassRemovedEdit newWith: anEvent item name) 
		package: (PackageOrganizer default packageOfClass: anEvent item)