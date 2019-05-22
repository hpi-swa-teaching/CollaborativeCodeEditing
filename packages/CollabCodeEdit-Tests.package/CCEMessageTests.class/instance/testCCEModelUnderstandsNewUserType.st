tests clientside
testCCEModelUnderstandsNewUserType
	self assert: (CCEModel canUnderstand: (CCEMessage newUser) type).