accessing
currentSelectionAsDictionary
	^ currentSelectionAsDictionary ifNil: [ currentSelectionAsDictionary:= 
			(OrderedDictionary newFrom: 
				{ #categorySelection -> nil . #classSelection -> nil . #methodSelection -> nil }) ]