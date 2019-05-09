hashing
buildPackageDictionaryForSession
	
	| packagesWithHashes sessionHash |
	
	packagesWithHashes := OrderedDictionary new.
	sessionHash := 0.
	
	self sessionPackages keys do:
		[ :aPackageName | 
			| packageDictionary |
		
			packageDictionary := self buildClassDictionaryForPackage: aPackageName.
			sessionHash := sessionHash + packageDictionary at: #hashSum.
		
			packagesWithHashes add: aPackageName -> packageDictionary].
	
	^ OrderedDictionary newFrom: {#hashSum -> sessionHash.
									#PackageHashes -> packagesWithHashes}