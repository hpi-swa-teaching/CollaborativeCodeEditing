session-managment
createSessionWithScope: aStringArray
	self scope: aStringArray.
	self checksum: (CCEPackageHasher hashPackages: aStringArray).
	self publishSession