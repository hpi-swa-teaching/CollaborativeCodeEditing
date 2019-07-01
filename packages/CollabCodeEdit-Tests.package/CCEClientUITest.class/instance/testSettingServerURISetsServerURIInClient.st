running
testSettingServerURISetsServerURIInClient
	| testServerURI | 
	
	testServerURI := 'http://testHost:42'.	
	clientUI serverURI: testServerURI.
	
	self assert: testServerURI equals: client serverURI