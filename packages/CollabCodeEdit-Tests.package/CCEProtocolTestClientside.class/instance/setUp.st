running
setUp
	
	model := CCEModel new.
	session := CCESession new.
	client := CCEClient new.
	testIdentifier := 'istMee'.
	imageAccount := CCEAccount new humanReadableName: testIdentifier.
	
	networkInterface := CCESocketMock new.
	
	client socket: networkInterface.
	
	model client: client.
	model session: session. 
	model imageAccount: imageAccount.
	model session addStatusSubscriber: model.
	session client: model client.
	session imageAccount: model imageAccount.
	
	testPackages := #('Signals').
	testToken := #testToken.
	testChecksum := CCEPackageManager default hashPackages: testPackages.
		
	self subClassSpecificSetUp