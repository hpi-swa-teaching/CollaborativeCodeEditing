instance creation
newWith: aMethodSource in: aClassName 	
	^ self new
			classIdentifier: aClassName;
			editContent: aMethodSource;
			editType: (self editTypes at: #METHOD_ADDED_OR_CHANGED)