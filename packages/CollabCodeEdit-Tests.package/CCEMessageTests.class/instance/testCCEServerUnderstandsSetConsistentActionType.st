tests serverside
testCCEServerUnderstandsSetConsistentActionType
	self assert: (CCEServer canUnderstand: (CCEMessage setConsistent: false) type )