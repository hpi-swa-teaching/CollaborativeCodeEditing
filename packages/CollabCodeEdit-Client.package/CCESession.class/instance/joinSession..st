session-managment
joinSession: anOrderedDictionary
	self 
		createCollaboratorsListFrom: (anOrderedDictionary at: #collaborators);
		token: (anOrderedDictionary at: #token);
		joinSessionWith: (anOrderedDictionary at: #scope) asArray 
			and: (anOrderedDictionary at: #checksum);
		activateSelectionListener.
	self editManager listenForChangesInScope: self scope for: self client