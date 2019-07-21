requests ui
testJoinSessionShouldSendAJoinSessionMessageWithCorrectToken
	| expectedMessage | 		

	expectedMessage := CCEMessage joinSession: #testToken withIdentifier: (CCEAccount new humanReadableName).	
	model joinSessionWith: #testToken.	
	
	self assert: (networkInterface hasMessage: expectedMessage serialize)