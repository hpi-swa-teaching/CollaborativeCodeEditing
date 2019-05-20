hashing
buildPackageDictionaryForSession: anArray	
	| packagesWithHashes sessionHash |
	
	packagesWithHashes := OrderedDictionary new.
	sessionHash := 0.
	
	anArray do:
		[ :aPackageName | 
			| packageDictionary |
		
			packageDictionary := self buildClassDictionaryForPackage: aPackageName.
			sessionHash := sessionHash + packageDictionary at: #hashSum.
		
			packagesWithHashes add: aPackageName -> packageDictionary].
	
	^ OrderedDictionary newFrom: {#hashSum -> sessionHash.
									#PackageHashes -> packagesWithHashes}