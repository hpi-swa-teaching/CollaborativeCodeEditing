class edit
buildClassModifiedOrAddedEditFrom: anEvent
	^  CCEClassModifiedEdit new
		editContent: (CCEEditBuilder buildClassDefinitionFrom: anEvent);
		package: (PackageOrganizer default packageOfClass: anEvent item)