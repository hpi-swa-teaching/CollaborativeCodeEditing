collaborator managment
removeCollaborator: aString
	self collaborators removeKey: aString.
	self updateCollaboratorsInUI
	