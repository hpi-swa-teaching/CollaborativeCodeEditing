tests
testCreateSessionPayloadShouldReturnOrderedDictionaryWithCorrectSessionPayload

	| expectedPayload | 
	expectedPayload := OrderedDictionary newFrom: {
		#scope -> #('Signals') .
		#checksum -> 12345 .
		#id -> 'SS' }.
	
	session scope: #('Signals').
	session checksum: 12345.
	session imageAccount humanReadableName: 'SS'.
	
	self assert: expectedPayload equals: session createSessionPayload