tests clientside
testCCEModelUnderstandsAckCreateSessionWithErrorType
	self assert: (CCEModel canUnderstand: (CCEMessage ackCreateSession: #testSessionTokenWithError withError: 'testSession failed') type).