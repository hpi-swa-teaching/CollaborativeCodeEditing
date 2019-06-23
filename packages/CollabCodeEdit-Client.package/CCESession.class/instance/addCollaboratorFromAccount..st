collaborator managment
addCollaboratorFromAccount: aCCEAccount
	self addCollaborator: (CCECollaborator newFromAccount: aCCEAccount) withKey: (aCCEAccount humanReadableName)