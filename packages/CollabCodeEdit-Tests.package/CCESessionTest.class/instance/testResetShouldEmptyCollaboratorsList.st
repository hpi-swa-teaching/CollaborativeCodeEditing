tests
testResetShouldEmptyCollaboratorsList
	session scope: #('Signals'); 
		checksum: 42.
		
	session reset.
	
	self assert: session collaborators isEmpty