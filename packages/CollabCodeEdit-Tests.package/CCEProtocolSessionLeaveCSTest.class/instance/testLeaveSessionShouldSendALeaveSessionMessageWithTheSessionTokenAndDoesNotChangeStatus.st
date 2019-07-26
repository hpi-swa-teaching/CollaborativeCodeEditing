requests ui
testLeaveSessionShouldSendALeaveSessionMessageWithTheSessionTokenAndDoesNotChangeStatus
	| statusBeforeLeaveAction | 	

	model session token: 'aTestToken'.
	statusBeforeLeaveAction := session getStatus.
	
	model leaveSession.
	self assert: (networkInterface hasMessage: (CCEMessage leaveSessionWith: 'aTestToken') serialize).
	self assert: (statusBeforeLeaveAction = session getStatus)