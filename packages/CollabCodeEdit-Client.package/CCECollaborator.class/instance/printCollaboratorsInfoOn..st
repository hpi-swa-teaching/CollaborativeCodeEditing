printing
printCollaboratorsInfoOn: aStream
	aStream
		nextPutAll: self identifier;
		nextPutAll: ' (';
		nextPutAll: self consistencyState;
		nextPutAll: ') '