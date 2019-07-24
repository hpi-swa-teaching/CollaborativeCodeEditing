session-managment
joinCleanSessionWith: aSessionScopeArray and: aHash
			self 
				setCleanSessionWith: aSessionScopeArray and: aHash;
				setConsistencyOfCollaborator: (self localAccount humanReadableName) to: true.
			self client sendMessage: (CCEMessage setConsistent: true)