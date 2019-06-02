collaborator managment
addCollaboratorFromPayload: aDictionary
	| newIdentifier | 
	newIdentifier := aDictionary at: #id.
	self addCollaborator: (CCECollaborator new identifier: newIdentifier) withKey: newIdentifier