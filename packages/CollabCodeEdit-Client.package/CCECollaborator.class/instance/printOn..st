accessing
printOn: aStream
	aStream
		print: self identifier;
		nextPutAll: ' -- ';
		print: self consistencyState;
		nextPutAll: ' -- ';
		print: (self currentSelectionAsDictionary at: #categorySelection) asString;
		nextPutAll: '>>';
		print: (self currentSelectionAsDictionary at: #classSelection) asString;
		nextPutAll: '>>';
		nextPutAll: (self currentSelectionAsDictionary at: #methodSelection) asString.