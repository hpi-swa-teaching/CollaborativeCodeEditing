information managment
createCollaboratorInformation
	^ OrderedDictionary newFrom: { #id -> self identifier . #isConsistent -> self isConsistent }
	