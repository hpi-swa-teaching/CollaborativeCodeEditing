class edits
buildClassRecategorizedEditFrom: anEvent
	^  CCEClassRecategorizedEdit new
		oldCategory: anEvent oldCategory;
		recategorizedClass: anEvent item;
		package: (PackageOrganizer default packageOfClass: anEvent item)