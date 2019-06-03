running
setUp
	server := CCEServer new.
	
	client1 := CCERemoteClient new identifier: 'aKey'; isConsistent: false.
	client2 := CCERemoteClient new identifier: 'anotherKey'; isConsistent: true.
	client3 := CCERemoteClient new identifier: 'anotherKey'; isConsistent: true.
	
	networkInterface1 := CCESocketMock new.
	networkInterface2 := CCESocketMock new.
	networkInterface3 := CCESocketMock new.
	
	client1 socket: networkInterface1.
	client2 socket: networkInterface2.
	client3 socket: networkInterface3.	
	
	server addClient: client1.
	server addClient: client2.
	server addClient: client3.
	
	testCollaboratorsList := OrderedCollection newFrom: {
		OrderedDictionary newFrom: {#id->client1 identifier . #isConsistent -> client1 isConsistent}.
		OrderedDictionary newFrom: {#id->client2 identifier . #isConsistent -> client2 isConsistent}.
		OrderedDictionary newFrom: {#id->client3 identifier . #isConsistent -> client3 isConsistent}}.
	
	testPackages := #('Signals').
	testSessionCreationPayload := OrderedDictionary newFrom: {
		#scope -> testPackages .
		#checksum -> (CCEPackageManager default hashPackages: testPackages)}.
		
"	testSessionJoinPayload := testSessionCreationPayload at: #colalborators put: testCollaboratorsList"
		