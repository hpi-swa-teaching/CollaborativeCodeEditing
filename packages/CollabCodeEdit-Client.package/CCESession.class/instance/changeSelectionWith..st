selection managment
changeSelectionWith: anOrderedDictionary
	self 
		setSelectionOfCollaborator: (anOrderedDictionary at: #id) 
		to: (anOrderedDictionary at: #selection)