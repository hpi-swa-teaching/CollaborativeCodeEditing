running
setUp
	server := CCEServer new.
	
	client1 := CCERemoteClient new identifier: 'client1Identifier'; isConsistent: false.
	client2 := CCERemoteClient new identifier: 'client2Identifier'; isConsistent: true.
	client3 := CCERemoteClient new identifier: 'client3Identifier'; isConsistent: true.
	
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
		#checksum -> (CCEPackageManager default hashPackages: testPackages).
		#id -> client1 identifier }