class edit
buildClassRenamedEditFrom: anEvent
	^ CCEClassRenamedEdit new
		oldName: anEvent oldName;
		newName: anEvent newName;
		renamedClass: anEvent item;
		package: (PackageOrganizer default packageOfClass: anEvent item)