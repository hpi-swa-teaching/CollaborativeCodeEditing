requests ui
testCreateSessionShouldSendASessionCreationMessageWithCorrectPayload
	model createSessionWith: testPackages.

	self assert: (networkInterface hasMessage: 
		( CCEMessage createSessionWith: 
			( OrderedDictionary newFrom: {
				#scope -> testPackages .
				#checksum -> (CCEPackageHasher hashPackages: testPackages) .
				#id -> imageAccount humanReadableName }) )
		serialize ).
	networkInterface clear