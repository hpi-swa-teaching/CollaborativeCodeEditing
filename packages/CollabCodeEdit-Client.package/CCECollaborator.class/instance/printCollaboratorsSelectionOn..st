accessing
printCollaboratorsSelectionOn: aStream
	(self currentSelectionAsDictionary at: #categorySelection) asString ifNotNil: [ :categorySelection |
		aStream nextPutAll: categorySelection ].
	 (self currentSelectionAsDictionary at: #classSelection) asString ifNotNil: [ :classSelection | 
		aStream nextPutAll: '>>' , classSelection ].
	(self currentSelectionAsDictionary at: #methodSelection) asString ifNotNil: [ :methodSelection | 
		aStream nextPutAll: '>>', methodSelection ]