requests ui
testJoinSessionShouldSendAJoinSessionMessageWithCorrectToken
	model joinSessionWith: #testToken.	
	self assert: (networkInterface hasMessage: 
		(CCEMessage joinSession: #testToken withIdentifier: 
			(model session localAccount humanReadableName)) serialize)