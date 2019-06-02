tests backend
testJoinSessionUnderstandsNextButtonAction
	self assert: (CCEJoinSessionModel canUnderstand: (model buildNextButton: toolbuilder) action)