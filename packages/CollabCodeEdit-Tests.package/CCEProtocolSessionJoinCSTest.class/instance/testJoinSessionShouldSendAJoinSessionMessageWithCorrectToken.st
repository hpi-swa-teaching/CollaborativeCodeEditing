requests ui
testJoinSessionShouldSendAJoinSessionMessageWithCorrectToken
	model joinSessionWith: #testToken.	
	self assert: (networkInterface hasMessage: 
		(CCEMessage joinSession: #testToken withIdentifier: 
			(CCEAccount default humanReadableName)) serialize)