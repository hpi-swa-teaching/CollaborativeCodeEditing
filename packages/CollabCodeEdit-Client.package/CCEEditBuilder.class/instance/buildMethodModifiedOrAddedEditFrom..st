method edits
buildMethodModifiedOrAddedEditFrom: anEvent
	^  (CCEMethodAddedOrModifiedEdit 
			newWith: anEvent item getSource in: anEvent itemClass)
			package: (PackageOrganizer default packageOfClass: anEvent itemClass)