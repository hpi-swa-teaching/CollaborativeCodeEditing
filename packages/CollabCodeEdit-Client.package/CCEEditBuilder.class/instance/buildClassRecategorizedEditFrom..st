as yet unclassified
buildClassRecategorizedEditFrom: anEvent
	^  CCEClassRecategorizedEdit new
		oldCategory: anEvent oldCategory;
		recategorizedClass: anEvent item