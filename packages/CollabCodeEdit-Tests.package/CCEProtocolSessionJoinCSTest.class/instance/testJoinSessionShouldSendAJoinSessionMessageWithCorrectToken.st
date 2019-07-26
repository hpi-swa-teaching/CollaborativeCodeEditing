requests ui
testJoinSessionShouldSendAJoinSessionMessageWithCorrectToken
	| expectedMessage | 		

	expectedMessage := CCEMessage joinSession: #testToken withIdentifier: (model session localAccount humanReadableName).	
	model joinSessionWith: #testToken.	
	
	self assert: (networkInterface hasMessage: expectedMessage serialize)