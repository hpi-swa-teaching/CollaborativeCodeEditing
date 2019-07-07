as yet unclassified
buildClassDefinitionModifiedEditFrom: anEvent
	^ CCEClassDefinitionModifiedEdit new 
		oldClass: anEvent oldItem;
		newClass: anEvent item