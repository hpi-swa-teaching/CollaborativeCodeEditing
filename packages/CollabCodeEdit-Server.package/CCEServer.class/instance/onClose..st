request handling
onClose: aCCERemoteClient
	aCCERemoteClient session ifNotNil: [ :session | session
		removeClient: aCCERemoteClient ].

	self removeClient: aCCERemoteClient