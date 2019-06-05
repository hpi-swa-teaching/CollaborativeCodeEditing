services
checkCleanStateWith: anOrderedDictionary
	| remoteSessionScope remoteSessionHash remoteCollaborators |
	
	remoteSessionScope := (anOrderedDictionary at: #scope) asArray.
	remoteSessionHash := anOrderedDictionary at: #checksum.
	
	((CCEPackageManager default hashPackages: remoteSessionScope) = remoteSessionHash)
		ifTrue: [ 
			self setCleanSessionWith: remoteSessionScope and: remoteSessionHash.
			self createCollaboratorsListFrom: remoteCollaborators.
			self client sendMsg: (CCEMessage setConsistent: true)]
		ifFalse: [
			self setDirtySessionWith: remoteSessionHash and: remoteSessionHash.
			self client sendMsg: (CCEMessage setConsistent: false)]