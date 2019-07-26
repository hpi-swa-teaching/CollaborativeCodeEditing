collaborator managment
removeCollaborator: aString
	self collaborators removeKey: aString.
	self changed: #collaboratorsList