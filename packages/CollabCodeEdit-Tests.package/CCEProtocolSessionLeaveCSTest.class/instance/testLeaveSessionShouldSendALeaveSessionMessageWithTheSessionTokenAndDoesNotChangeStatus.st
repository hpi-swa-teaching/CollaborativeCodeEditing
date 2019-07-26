requests ui
testLeaveSessionShouldSendALeaveSessionMessageWithTheSessionTokenAndDoesNotChangeStatus
	| statusBeforeLeaveAction | 	

	model session token: testToken.
	statusBeforeLeaveAction := session getStatus.
	
	model leaveSession.
	
	self assert: (networkInterface hasMessage: (CCEMessage leaveSessionWith: testToken) serialize).
	self assert: (statusBeforeLeaveAction = session getStatus)