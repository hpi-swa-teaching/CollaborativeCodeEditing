requests ui
testCreateSessionShouldSendASessionCreationMessageWithCorrectPayload
	| expectedPayload expectedMessage | 	
	
	expectedPayload := OrderedDictionary newFrom: {
		#scope -> testPackages .
		#checksum -> (CCEPackageManager default hashPackages: testPackages) .
		#id -> imageAccount humanReadableName }.
		
	expectedMessage := CCEMessage createSessionWith: expectedPayload.
	
	model createSessionWith: testPackages.	
	
	self assert: (networkInterface hasMessage: expectedMessage serialize).
	
	networkInterface clear