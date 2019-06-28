accessing
printOn: aStream
	aStream
		print: self identifier;
		nextPutAll: ' -- ';
		print: self consistencyState;
		nextPutAll: ' ';
		print: (self currentSelection at: #categorySelection);
		nextPutAll: '>>';
		print: (self currentSelection at: #classSelection);
		nextPutAll: '>>';
		nextPutAll: (self currentSelection at: #methodSelection)