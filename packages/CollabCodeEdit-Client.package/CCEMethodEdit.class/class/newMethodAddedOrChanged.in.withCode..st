instance creation
newMethodAddedOrChanged: aMethodSelector in: aClassName withCode: aMethodSource
	self new
		classIdentifier: aClassName;
		methodIdentifier: aMethodSelector;
		editContent: aMethodSource;
		editType: (self editTypes at: #METHOD_ADDED_OR_CHANGED)