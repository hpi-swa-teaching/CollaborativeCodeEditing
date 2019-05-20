as yet unclassified
createSessionWith: anOrderedDictionary	
	| sessionHash |	 
	
	self sessionScope: anOrderedDictionary.	
	
	sessionHash := CCEPackageManager default hashPackages: anOrderedDictionary asArray.
	
	^ CCESession default
		scope: anOrderedDictionary asArray;
		checksum: sessionHash.