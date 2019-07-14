class edits
buildClassModifiedEditFrom: anEvent
	^  CCEClassModifiedEdit new
		editContent: (self buildClassDefinitionFrom: anEvent);
		package: (PackageOrganizer default packageOfClass: anEvent item)