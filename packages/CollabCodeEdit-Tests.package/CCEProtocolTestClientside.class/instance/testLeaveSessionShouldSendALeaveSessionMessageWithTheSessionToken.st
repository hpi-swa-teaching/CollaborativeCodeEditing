requests ui
testLeaveSessionShouldSendALeaveSessionMessageWithTheSessionToken
	| expectedPayload expectedMessage | 	
	
	expectedPayload := OrderedDictionary newFrom: {
		#token -> #testToken}.
		
	expectedMessage := CCEMessage leaveSessionWith: #testToken.
	model session token: #testToken.
	
	model leaveSession.	
	
	self assert: (networkInterface hasMessage: expectedMessage serialize)