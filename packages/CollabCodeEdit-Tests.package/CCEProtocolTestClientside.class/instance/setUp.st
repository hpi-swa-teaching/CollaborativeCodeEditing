running
setUp
	
	model := CCEModel new.
	session := CCESession new.
	client := CCEClient new.
	testIdentifier := 'SS'.
	imageAccount := CCEAccount new humanReadableName: testIdentifier.
	
	networkInterface := CCESocketMock new.
	
	client socket: networkInterface.
	
	model client: client.
	model client addStatusSubscriber: model.
	model client connected: true.
	model session: session. 
	model account: imageAccount.
	model session addStatusSubscriber: model.
	session client: model client.
	session localAccount: model account.
	
	testPackages := #('Traits').
	testToken := #testToken.
	testChecksum := CCEPackageHasher hashPackages: testPackages.
		
	self subClassSpecificSetUp