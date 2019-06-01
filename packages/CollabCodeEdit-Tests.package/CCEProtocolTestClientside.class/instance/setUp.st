running
setUp
	model := CCEModel new.
	session := CCESession new.
	client := CCEClient new.
	
	networkInterface := CCESocketMock new.
	
	client socket: networkInterface.
	
	model client: client.
	model session: session. 
	model session addStatusSubscriber: model.
	session client: model client.
	
	testPackages := #('Signals').
	testToken := #testToken.
	testSessionPayload := OrderedDictionary newFrom: {
		#scope -> testPackages . 
		#checksum -> (CCEPackageManager default hashPackages: testPackages)}.
		
	testAckSessionPayload := OrderedDictionary newFrom: {
		#token -> #testToken}