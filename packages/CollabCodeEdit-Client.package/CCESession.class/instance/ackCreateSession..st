services
ackCreateSession: anOrderedDictionary
	self 
		token: (anOrderedDictionary at: #token);
		addCollaboratorFromAccount: self imageAccount;
		setConsistencyOfCollaborator: self imageAccount humanReadableName to: true.
	self status setToCleanRemoteSession