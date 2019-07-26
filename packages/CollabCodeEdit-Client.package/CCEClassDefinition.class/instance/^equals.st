comparing
= anObject
	^ (anObject isKindOf: self class)
		ifTrue: [ self equalsClassDefinition: anObject ]
		ifFalse: [ false ]