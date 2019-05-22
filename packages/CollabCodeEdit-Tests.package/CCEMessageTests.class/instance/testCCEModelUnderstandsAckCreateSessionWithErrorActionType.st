tests-clientside
testCCEModelUnderstandsAckCreateSessionWithErrorActionType
	self assert: (CCEModel canUnderstand: (CCEMessage ackCreateSession: #testSessionTokenWithError withError: 'testSession failed') type).