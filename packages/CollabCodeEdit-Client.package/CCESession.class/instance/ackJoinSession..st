session-managment
ackJoinSession: anOrderedDictionary
	| remoteSessionScope remoteSessionHash remoteCollaborators remoteSessionToken |
	
	remoteSessionScope := (anOrderedDictionary at: #scope) asArray.
	remoteSessionHash := anOrderedDictionary at: #checksum.
	remoteCollaborators := anOrderedDictionary at: #collaborators.
	remoteSessionToken := anOrderedDictionary at: #token.
	
	self createCollaboratorsListFrom: remoteCollaborators.
	self token: remoteSessionToken.
	
	((CCEPackageManager default hashPackages: remoteSessionScope) = remoteSessionHash)
		ifTrue: [ 
			self setCleanSessionWith: remoteSessionScope and: remoteSessionHash.
			self setConsistencyOfCollaborator: (self imageAccount humanReadableName) to: true.
			self client sendMsg: (CCEMessage setConsistent: true) ]
		ifFalse: [			
			self setDirtySessionWith: remoteSessionScope and: remoteSessionHash.
			self setConsistencyOfCollaborator: (self imageAccount humanReadableName) to: false.
			self client sendMsg: (CCEMessage setConsistent: false) ].
	
	self activateSelectionListener