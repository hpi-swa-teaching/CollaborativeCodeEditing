accessing
currentSelectionAsDictionary
	^ currentSelectionAsDictionary ifNil: [currentSelection := OrderedDictionary newFrom: {
		#categorySelection -> nil .
		#classSelection -> nil .
		#methodSelection -> nil } ]