tests
testResetShouldNilSessionInformationAndResetStatusToInitial
	session scope: #('Signals'); 
		checksum: 42.
		
	session reset.
	
	self assert: (session scope) equals: nil.
	self assert: (session checksum) equals: nil.
	self assert: (session token) equals: nil.
	self assert: (session collaborators) equals: nil.
	self assert: (session status name) equals: CCESessionStatus noRemoteSession
