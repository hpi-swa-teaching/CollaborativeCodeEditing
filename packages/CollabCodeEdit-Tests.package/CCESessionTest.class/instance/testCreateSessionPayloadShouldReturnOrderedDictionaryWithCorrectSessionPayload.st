tests
testCreateSessionPayloadShouldReturnOrderedDictionaryWithCorrectSessionPayload
	| expectedPayload | 
	
	expectedPayload := OrderedDictionary newFrom: {
								#scope -> #('Signals').
								#checksum -> 12345}.
	
	session scope: #('Signals').
	session checksum: 12345.
	
	self assert: expectedPayload equals: session createSessionPayload