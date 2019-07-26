running
setUp
	server := CCEServer new.
	
	client1 := CCERemoteClient new identifier: 'client1Identifier'; isConsistent: false; yourself.
	client2 := CCERemoteClient new identifier: 'client2Identifier'; isConsistent: true; yourself.
	client3 := CCERemoteClient new identifier: 'client3Identifier'; isConsistent: true; yourself.
	
	networkInterface1 := CCESocketMock new.
	networkInterface2 := CCESocketMock new.
	networkInterface3 := CCESocketMock new.
	
	client1 socket: networkInterface1.
	client2 socket: networkInterface2.
	client3 socket: networkInterface3.	
	
	server addClient: client1.
	server addClient: client2.
	server addClient: client3.
	
	
	testPackages := #('Traits').
	testSessionCreationPayload := OrderedDictionary newFrom: {
		#scope -> testPackages .
		#checksum -> (CCEPackageHasher hashPackages: testPackages).
		#id -> client1 identifier }