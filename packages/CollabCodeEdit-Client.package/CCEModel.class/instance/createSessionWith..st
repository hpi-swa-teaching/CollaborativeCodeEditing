as yet unclassified
createSessionWith: anOrderedDictionary	
	| sessionHash |	 
			
	sessionHash := CCEPackageManager default hashPackages: anOrderedDictionary asArray.
	
	^ CCESession default
		scope: anOrderedDictionary asArray;
		checksum: sessionHash.