running
setUp
	testScope := #('Morphic').
	testChecksum := 12345.
	
	remoteSession := CCERemoteSession new scope: testScope; initialChecksum: testChecksum.