tests-serverside
testCCEServerUnderstandsCreateSessionActionType
	self assert: (CCEServer canUnderstand: CCEMessage createSession type).