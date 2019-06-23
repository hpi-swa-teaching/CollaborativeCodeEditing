as yet unclassified
printOn: aStream
	aStream nextPutAll: self classSelection asString;
		nextPutAll: '>>';
		nextPutAll: self methodSelection
