collaborator managment
addCollaborator: aCCECollaborator withKey: aString
	self collaborators at: aString put: aCCECollaborator.
	self changed: #collaboratorsList