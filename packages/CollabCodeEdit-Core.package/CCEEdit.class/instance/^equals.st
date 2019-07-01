comparing
= anObject
	^ (anObject isKindOf: self class) 
		ifTrue: [ self classIdentifier = anObject classIdentifier and: 
			[ self editContent = anObject editContent ] ]
		ifFalse: [ false ]