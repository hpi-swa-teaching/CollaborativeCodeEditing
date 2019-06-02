services
reset
	self checksum: nil.
	self scope: nil.
	self token: nil.
	self removeAllCollaborators.
	self status reset