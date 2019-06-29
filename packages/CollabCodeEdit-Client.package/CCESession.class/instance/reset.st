services
reset
	self checksum: nil;
		scope: nil;
		token: nil;
		removeAllCollaborators.
	self status reset.
	self packageManager stopListeningForChanges