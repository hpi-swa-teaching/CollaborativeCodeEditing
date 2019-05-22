tests-clientside
testCCEModelUnderstandsAckCreateSessionActionType
	self assert: (CCEModel canUnderstand: (CCEMessage ackCreateSession: #testSessionToken) type).