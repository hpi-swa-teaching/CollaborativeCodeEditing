services
createSessionWithScope: aStringArray
	self scope: aStringArray.
	self checksum: (CCEPackageManager default hashPackages: aStringArray).
	self publishSession