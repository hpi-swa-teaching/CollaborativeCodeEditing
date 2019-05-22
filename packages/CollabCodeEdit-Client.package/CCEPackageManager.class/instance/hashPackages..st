hashing
hashPackages: anArray
	^ (self buildPackageDictionaryForSession: anArray) at: #hashSum