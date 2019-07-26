accessing
currentSelectionAsDictionary
	^ currentSelectionAsDictionary ifNil: [ self currentSelection: 
		(OrderedDictionary newFrom: {
			#categorySelection -> nil .
			#classSelection -> nil .
			#methodSelection -> nil }) ]