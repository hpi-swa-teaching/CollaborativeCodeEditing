running
setUp
	super setUp.

	testPayloadCollaboratorsList := OrderedCollection newFrom: {
		OrderedDictionary newFrom: {#id->'aKey' . #isConsistent -> true} .
		OrderedDictionary newFrom: {#id->'anotherKey' . #isConsistent -> false}.
		OrderedDictionary newFrom: {#id->'athirdKey' . #isConsistent -> true}}.
	
	testAckJoinSessionPayload := OrderedDictionary newFrom: {
			#scope->testPackages .
			#checksum-> testChecksum .
			#collaborators -> testPayloadCollaboratorsList .
			#token -> testToken}.
	
	testCollaboratorsList := OrderedDictionary newFrom: {
		'aKey' -> (CCECollaborator new identifier: 'aKey'; consistencyState: CCECollaborator isConsistentString) .
		'anotherKey' -> (CCECollaborator new identifier: 'anotherKey'; consistencyState: CCECollaborator isNotConsistentString) .
		'athirdKey' -> (CCECollaborator new identifier: 'athirdKey'; consistencyState: CCECollaborator isConsistentString)}