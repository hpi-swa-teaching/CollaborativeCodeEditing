running
setUp
	server := CCEServer new.
	
	networkInterface1 := CCESocketMock new.
	networkInterface2 := CCESocketMock new.
	networkInterface3 := CCESocketMock new.
	
	client1 := CCERemoteClient new socket: networkInterface1.
	client2 := CCERemoteClient new socket: networkInterface2.
	client3 := CCERemoteClient new socket: networkInterface3.
	
	server addClient: client1.
	server addClient: client2.
	server addClient: client3.
	
	testPackages := #('Signals').
	testSessionPayload := OrderedDictionary newFrom: {
		#scope -> testPackages .
		#checksum -> (CCEPackageManager default hashPackages: testPackages)}
		