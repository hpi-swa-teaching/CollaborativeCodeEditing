instance creation
newWith: anObject in: aClass
	^  self new editContent: anObject; classIdentifier: aClass name