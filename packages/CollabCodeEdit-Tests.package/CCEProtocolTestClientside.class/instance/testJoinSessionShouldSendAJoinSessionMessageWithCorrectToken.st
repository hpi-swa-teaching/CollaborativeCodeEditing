requests ui
testJoinSessionShouldSendAJoinSessionMessageWithCorrectToken
	| expectedMessage | 		

		
	expectedMessage := CCEMessage joinSession: #testToken.	
	model joinSessionWith: #testToken.	
	
	self assert: (networkInterface hasMessage: expectedMessage serialize)