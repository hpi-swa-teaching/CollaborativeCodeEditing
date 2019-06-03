services
addNewCollaboratorWith: anOrderedDictionary
	| collaboratorId |
	
	collaboratorId := anOrderedDictionary at: #id.
	self collaborators at: collaboratorId put: (CCECollaborator new identifier: collaboratorId).