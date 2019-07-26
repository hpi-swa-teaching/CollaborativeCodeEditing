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
			#token -> #testToken}.
	
	testCollaboratorsList := OrderedDictionary newFrom: {
		'aKey' -> (CCECollaborator new identifier: 'aKey'; consistencyState: CCECollaborator isConsistentString) .
		'anotherKey' -> (CCECollaborator new identifier: 'anotherKey'; consistencyState: CCECollaborator isNotConsistentString) .
		'athirdKey' -> (CCECollaborator new identifier: 'athirdKey'; consistencyState: CCECollaborator isConsistentString)}