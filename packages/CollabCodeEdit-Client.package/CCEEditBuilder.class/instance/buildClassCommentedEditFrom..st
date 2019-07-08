class edits
buildClassCommentedEditFrom: anEvent
	^  (CCEClassCommentedEdit newWith: anEvent item) 
		package: (PackageOrganizer default packageOfClass: anEvent item)