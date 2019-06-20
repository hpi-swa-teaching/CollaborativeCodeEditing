running
subClassSpecificSetUp
	testSessionPayload := OrderedDictionary newFrom: {
		#scope -> testPackages . 
		#checksum -> (CCEPackageManager default hashPackages: testPackages) }.
		
	testAckSessionPayload := OrderedDictionary newFrom: {
		#token -> #testToken }
