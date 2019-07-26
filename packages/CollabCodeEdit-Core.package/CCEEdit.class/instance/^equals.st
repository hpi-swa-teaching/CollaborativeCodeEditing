comparing
= anObject
	^ (anObject isKindOf: self class) 
		ifTrue: [ self editContent = anObject editContent ] 
		ifFalse: [ false ]