tests-serverside
testCCEServerUnderstandsCreateSessionWithActionType
	self assert: (CCEServer canUnderstand: (CCEMessage createSessionWith: {1->42}) type).