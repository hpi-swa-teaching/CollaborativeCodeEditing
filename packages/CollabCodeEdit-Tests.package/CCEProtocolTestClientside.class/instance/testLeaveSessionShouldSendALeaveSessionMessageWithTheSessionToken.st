requests ui
testLeaveSessionShouldSendALeaveSessionMessageWithTheSessionToken
	| expectedMessage | 	
	
	expectedMessage := CCEMessage leaveSessionWith: testToken.
	model session token: testToken.
	
	model leaveSession.
	
	self assert: (networkInterface hasMessage: expectedMessage serialize)