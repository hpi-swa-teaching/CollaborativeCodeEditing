requests ui
testCreateSessionShouldSendASessionCreationMessageWithCorrectPayload
	model createSessionWith: testPackages.

	self assert: (networkInterface hasMessage: 
		( CCEMessage createSessionWith: 
			( OrderedDictionary newFrom: {
				#scope -> testPackages .
				#checksum -> (CCEPackageManager default hashPackages: testPackages) .
				#id -> imageAccount humanReadableName }) )
		serialize ).
	networkInterface clear