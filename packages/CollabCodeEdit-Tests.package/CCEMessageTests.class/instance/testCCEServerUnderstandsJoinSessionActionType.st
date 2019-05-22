tests-serverside
testCCEServerUnderstandsJoinSessionActionType
	self assert: (CCEServer canUnderstand: (CCEMessage joinSession: #testSession) type).