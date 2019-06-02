services
createSessionWithScope: aStringArray
	self scope: aStringArray.
	self checksum: (CCEPackageManager default hashPackages: aStringArray).
	self collaborators: (OrderedCollection new).
	self publishSession.