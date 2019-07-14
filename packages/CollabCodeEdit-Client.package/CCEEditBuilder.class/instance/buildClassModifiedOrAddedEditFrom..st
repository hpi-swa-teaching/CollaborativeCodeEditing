class edits
buildClassModifiedOrAddedEditFrom: anEvent
	^  CCEClassModifiedEdit new
		editContent: (self buildClassDefinitionFrom: anEvent);
		package: (PackageOrganizer default packageOfClass: anEvent item)