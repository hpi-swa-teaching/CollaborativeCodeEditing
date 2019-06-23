services
changeSelectionWith: anOrderedDictionary
	| identifier selection | 
	
	identifier := ( anOrderedDictionary at: #id ).
	selection := ( anOrderedDictionary at: #selection).
	
	self setSelectionOfCollaborator: identifier to: selection