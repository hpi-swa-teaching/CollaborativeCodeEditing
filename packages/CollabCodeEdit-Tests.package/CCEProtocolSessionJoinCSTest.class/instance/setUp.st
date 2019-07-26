running
setUp
	super setUp.
	
	testAckJoinSessionPayload := OrderedDictionary newFrom: {
			#scope->testPackages .
			#checksum-> (CCEPackageManager default hashPackages: testPackages).
			#collaborators -> ( OrderedCollection newFrom: {
				OrderedDictionary newFrom: {#id->'aKey' . #isConsistent -> true} .
				OrderedDictionary newFrom: {#id->'anotherKey' . #isConsistent -> false}.
				OrderedDictionary newFrom: {#id->'athirdKey' . #isConsistent -> true}}) .
			#token -> #testToken}