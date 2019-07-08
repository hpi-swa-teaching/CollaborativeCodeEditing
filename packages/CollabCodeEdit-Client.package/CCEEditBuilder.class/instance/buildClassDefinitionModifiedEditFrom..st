class edits
buildClassDefinitionModifiedEditFrom: anEvent
	^ CCEClassDefinitionModifiedEdit new 
		oldClass: anEvent oldItem;
		newClass: anEvent item;
		package: (PackageOrganizer default packageOfClass: anEvent item)