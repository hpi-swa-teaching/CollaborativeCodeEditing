session-managment
joinSession: anOrderedDictionary
	| remoteSessionScope remoteSessionHash |
	
	remoteSessionScope := (anOrderedDictionary at: #scope) asArray.
	remoteSessionHash := anOrderedDictionary at: #checksum.
	
	self 
		createCollaboratorsListFrom: (anOrderedDictionary at: #collaborators);
		token: (anOrderedDictionary at: #token);
		joinSessionWith: remoteSessionScope and: remoteSessionHash;
		activateSelectionListener.
	self packageManager listenForChangesInScope: self scope for: self client