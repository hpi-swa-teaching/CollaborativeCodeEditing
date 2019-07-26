services
reset
	self
		checksum: nil;
		scope: nil;
		token: nil;
		removeAllCollaborators.
	self editManager stopListeningForChanges.
	self status setToNoRemoteSession.
	self deactivateSelectionListener