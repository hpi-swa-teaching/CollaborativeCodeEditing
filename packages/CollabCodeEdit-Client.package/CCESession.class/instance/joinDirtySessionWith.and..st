session-managment
joinDirtySessionWith: aSessionScopeArray and: aHash
	self 
		setDirtySessionWith: aSessionScopeArray and: aHash;
		setConsistencyOfCollaborator: (self localAccount humanReadableName) to: false.
	self client sendMessage: (CCEMessage setConsistent: false)