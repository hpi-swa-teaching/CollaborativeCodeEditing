running
setUp
	model := CCEModel new.
	session := CCESession new.
	client := CCEClient new.
	
	networkInterface := CCESocketMock new.
	
	client socket: networkInterface.
	
	imageAccount := CCEAccount new humanReadableName: 'SS'.
	
	model client: client.
	model session: session. 
	model session addStatusSubscriber: model.
	session client: model client.
	model account: imageAccount.
	session imageAccount: model account.
	
	testPackages := #('Traits')