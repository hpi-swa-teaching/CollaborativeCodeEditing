tests
testAddClientShouldSetSelfAsClientsSession
	| addedClient | 
	
	addedClient := CCERemoteClient new.
	remoteSession addClient: addedClient.
	
	self assert: remoteSession equals: addedClient session