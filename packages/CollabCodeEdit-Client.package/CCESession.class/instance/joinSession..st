session-managment
joinSession: anOrderedDictionary
	| remoteSessionScope remoteSessionHash |
	
	remoteSessionScope := (anOrderedDictionary at: #scope) asArray.
	remoteSessionHash := anOrderedDictionary at: #checksum.
	
	self createCollaboratorsListFrom: (anOrderedDictionary at: #collaborators).
	self token: (anOrderedDictionary at: #token).
	
	((CCEPackageManager default hashPackages: remoteSessionScope) = remoteSessionHash)
		ifTrue: [ 
			self setCleanSessionWith: remoteSessionScope and: remoteSessionHash.
			self setConsistencyOfCollaborator: (self localAccount humanReadableName) to: true.
			self client sendMessage: (CCEMessage setConsistent: true) ]
		ifFalse: [			
			self setDirtySessionWith: remoteSessionScope and: remoteSessionHash.
			self setConsistencyOfCollaborator: (self localAccount humanReadableName) to: false.
			self client sendMessage: (CCEMessage setConsistent: false) ].
	
	self activateSelectionListener.
	self packageManager listenForChangesInScope: self scope for: self client