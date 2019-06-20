as yet unclassified
createCollaboratorInformation
	^ OrderedDictionary newFrom: { #id -> self identifier . #isConsistent -> self isConsistent }
	