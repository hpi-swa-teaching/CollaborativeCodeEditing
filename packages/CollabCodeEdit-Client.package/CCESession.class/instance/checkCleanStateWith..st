session-managment
checkCleanStateWith: anOrderedDictionary
	| remoteSessionScope remoteSessionHash |
	
	remoteSessionScope := (anOrderedDictionary at: #scope) asArray.
	remoteSessionHash := anOrderedDictionary at: #checksum.
	
	((CCEPackageManager default hashPackages: remoteSessionScope) = remoteSessionHash)
		ifTrue: [ 
			self fillSessionWithScope: remoteSessionScope andChecksum: remoteSessionHash.
			self client sendMsg: (CCEMessage setConsistent: true)]
		ifFalse: [
			self client sendMsg: (CCEMessage setConsistent: false)]