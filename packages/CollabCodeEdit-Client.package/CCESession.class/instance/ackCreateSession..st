services
ackCreateSession: anOrderedDictionary
	self token: (anOrderedDictionary at: #token).
	self addCollaboratorFromAccount: self imageAccount.
	self setConsistencyOfCollaborator: self imageAccount humanReadableName to: true.
	self status setToCleanRemoteSession