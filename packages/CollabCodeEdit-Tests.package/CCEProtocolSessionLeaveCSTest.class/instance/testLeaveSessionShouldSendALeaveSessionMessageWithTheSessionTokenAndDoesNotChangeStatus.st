requests ui
testLeaveSessionShouldSendALeaveSessionMessageWithTheSessionTokenAndDoesNotChangeStatus
	| expectedMessage statusBeforeLeaveAction | 	
	
	expectedMessage := CCEMessage leaveSessionWith: testToken.
	model session token: testToken.
	
	statusBeforeLeaveAction := session getStatus.
	
	model leaveSession.
	
	self assert: (networkInterface hasMessage: expectedMessage serialize).
	self assert: (statusBeforeLeaveAction = session getStatus)