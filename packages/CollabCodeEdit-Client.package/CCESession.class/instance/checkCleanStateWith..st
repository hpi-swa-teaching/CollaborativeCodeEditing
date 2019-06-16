services
checkCleanStateWith: anOrderedDictionary
	| remoteSessionScope remoteSessionHash |
	
	remoteSessionScope := (anOrderedDictionary at: #scope) asArray.
	remoteSessionHash := anOrderedDictionary at: #checksum.
	
	((CCEPackageManager default hashPackages: remoteSessionScope) = remoteSessionHash)
		ifTrue: [ 
			self setCleanSessionWith: remoteSessionScope and: remoteSessionHash.
			self client sendMessage: (CCEMessage setConsistent: true)]
		ifFalse: [
			self setDirtySessionWith: remoteSessionHash and: remoteSessionHash.
			self client sendMessage: (CCEMessage setConsistent: false)]