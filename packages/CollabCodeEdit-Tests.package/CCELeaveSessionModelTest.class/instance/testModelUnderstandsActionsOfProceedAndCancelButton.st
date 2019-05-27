tests backend
testModelUnderstandsActionsOfProceedAndCancelButton
	
	self assert: (CCELeaveSessionModel canUnderstand: (model buildLeaveButtonWith: toolbuilder) action).
	self assert: (CCELeaveSessionModel canUnderstand: (model buildCancelButtonWith: toolbuilder) action)