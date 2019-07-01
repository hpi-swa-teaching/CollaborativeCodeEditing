printing
printOn: aStream
	aStream nextPutAll: self classSelection asString, '>>', self methodSelection
