session-managment
createSession: anOrderedDictionary
	self 
		token: (anOrderedDictionary at: #token);
		addCollaboratorFromAccount: self localAccount;
		setConsistencyOfCollaborator: self localAccount humanReadableName to: true.
	self status setToCleanRemoteSession.
	self activateSelectionListener