services
ackJoinSession: anOrderedDictionary
	| remoteSessionScope remoteSessionHash remoteCollaborators |
	
	remoteSessionScope := (anOrderedDictionary at: #scope) asArray.
	remoteSessionHash := anOrderedDictionary at: #checksum.
	remoteCollaborators := anOrderedDictionary at: #collaborators.
	
	self createCollaboratorsListFrom: remoteCollaborators.
	
	((CCEPackageManager default hashPackages: remoteSessionScope) = remoteSessionHash)
		ifTrue: [ 
			self setCleanSessionWith: remoteSessionScope and: remoteSessionHash.
			self setConsistencyOfCollaborator: (self imageAccount humanReadableName) to: true.
			self client sendMsg: (CCEMessage setConsistent: true)]
		ifFalse: [			
			self setDirtySessionWith: remoteSessionHash and: remoteSessionHash.
			self setConsistencyOfCollaborator: (self imageAccount humanReadableName) to: false.
			self client sendMsg: (CCEMessage setConsistent: false)]