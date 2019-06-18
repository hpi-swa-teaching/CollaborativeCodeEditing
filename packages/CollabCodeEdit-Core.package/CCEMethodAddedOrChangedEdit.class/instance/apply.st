applying
apply
	(CCEPackageManager default isInScope: self classToEdit) 
		ifTrue: [ self classToEdit compile: self editContent ]