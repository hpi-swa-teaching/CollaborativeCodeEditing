as yet unclassified
createSessionWith: anOrderedDictionary	
	| sessionHash |	 
	
	self sessionScope: anOrderedDictionary.	
	CCEPackageManager default sessionPackages: anOrderedDictionary asArray.
	
	sessionHash := CCEPackageManager default sessionHash.
	
	^ CCESession default
		scope: anOrderedDictionary asArray;
		checksum: sessionHash.