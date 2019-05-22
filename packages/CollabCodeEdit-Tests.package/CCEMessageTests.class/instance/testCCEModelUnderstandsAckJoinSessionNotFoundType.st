tests clientside
testCCEModelUnderstandsAckJoinSessionNotFoundType
	self assert: (CCEModel canUnderstand: (CCEMessage ackJoinSessionSessionNotFound) type).