accessing
printOn: aStream
	aStream
		nextPutAll: self identifier;
		nextPutAll: ' (';
		nextPutAll: self consistencyState;
		nextPutAll: ') ';
		nextPutAll: (self currentSelectionAsDictionary at: #categorySelection) asString;
		nextPutAll: '>>';
		nextPutAll: (self currentSelectionAsDictionary at: #classSelection) asString;
		nextPutAll: '>>';
		nextPutAll: (self currentSelectionAsDictionary at: #methodSelection) asString