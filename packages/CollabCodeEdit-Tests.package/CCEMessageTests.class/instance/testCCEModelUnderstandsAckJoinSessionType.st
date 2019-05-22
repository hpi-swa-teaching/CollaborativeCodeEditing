tests-clientside
testCCEModelUnderstandsAckJoinSessionType
	self assert: (CCEModel canUnderstand: (CCEMessage ackJoinSession) type).