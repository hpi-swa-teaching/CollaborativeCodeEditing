services
addNewCollaboratorWith: anOrderedDictionary
	| collaboratorId |
	
	collaboratorId := anOrderedDictionary at: #id.
	self collaborators at: collaboratorId put: (CCEDummyAccount new humanReadableName: collaboratorId).