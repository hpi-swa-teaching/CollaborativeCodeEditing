accessing
printOn: aStream
	aStream
		print: self identifier;
		nextPutAll: ' -- ';
		print: self consistencyState