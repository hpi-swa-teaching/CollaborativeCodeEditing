tests
testCreateSessionPayloadShouldReturnOrderedDictionaryWithCorrectSessionPayload

	| expectedPayload | 
	expectedPayload := OrderedDictionary newFrom: {
								#scope -> #('Signals') .
								#checksum -> 12345 .
								#id -> 'testName'}.
	
	session scope: #('Signals').
	session checksum: 12345.
	session imageAccount humanReadableName: 'testName'.
	
	self assert: expectedPayload equals: session createSessionPayload