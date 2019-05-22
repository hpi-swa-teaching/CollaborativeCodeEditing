session-managment
checkCleanStateWith: anOrderedDictionary
	| remoteSessionScope remoteSessionHash |
	
	remoteSessionScope := anOrderedDictionary at: #scope asArray.
	remoteSessionHash := anOrderedDictionary at: #checksum.
	
	[(CCEPackageManager default hashPackages: remoteSessionScope) equals: remoteSessionHash]
		ifTrue: [ self activateSessionWithScope: remoteSessionScope andChecksum: remoteSessionHash]
		ifFalse: []