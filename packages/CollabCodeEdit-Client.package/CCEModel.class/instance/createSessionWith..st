ui calls
createSessionWith: anOrderedDictionary	
	| sessionHash |	 
			
	sessionHash := CCEPackageManager default hashPackages: anOrderedDictionary asArray.
	
	^ self session
		scope: anOrderedDictionary asArray;
		checksum: sessionHash.