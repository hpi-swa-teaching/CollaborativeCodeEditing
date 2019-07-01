services
reset
	self checksum: nil;
		scope: nil;
		token: nil;
		removeAllCollaborators.
	self packageManager stopListeningForChanges.
	self status setToNoRemoteSession.
	self deactivateSelectionListener