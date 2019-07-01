comparing
= anObject
	^ (anObject isKindOf: self class) 
		ifTrue: [ self editID = anObject editID ]
		ifFalse: [ false ]