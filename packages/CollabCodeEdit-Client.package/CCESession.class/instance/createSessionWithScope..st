session-managment
createSessionWithScope: aStringArray
	self 
		scope: aStringArray;
		checksum: (CCEPackageHasher hashPackages: aStringArray);
		publishSession