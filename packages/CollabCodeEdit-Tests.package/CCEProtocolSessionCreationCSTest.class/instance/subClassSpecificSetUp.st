running
subClassSpecificSetUp
	testSessionPayload := OrderedDictionary newFrom: {
		#scope -> testPackages . 
		#checksum -> (CCEPackageHasher hashPackages: testPackages) }.
		
	testAckSessionPayload := OrderedDictionary newFrom: {
		#token -> #testToken }