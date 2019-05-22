tests clientside
testCCEModelUnderstandsAckCreateSessionType
	self assert: (CCEModel canUnderstand: (CCEMessage ackCreateSession: #testSessionToken) type).