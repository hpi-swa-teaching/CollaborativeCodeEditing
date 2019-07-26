accessing
printCollaboratorsSelectionOn: aStream
	(self currentSelectionAsDictionary at: #categorySelection) ifNotNil: [ :categorySelection |
		aStream nextPutAll: categorySelection asString ].
	 (self currentSelectionAsDictionary at: #classSelection) ifNotNil: [ :classSelection | 
		aStream nextPutAll: '>>' , classSelection asString ].
	(self currentSelectionAsDictionary at: #methodSelection) ifNotNil: [ :methodSelection | 
		aStream nextPutAll: '>>', methodSelection asString ]