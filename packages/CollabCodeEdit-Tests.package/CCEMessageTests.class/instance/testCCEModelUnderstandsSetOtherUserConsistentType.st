tests clientside
testCCEModelUnderstandsSetOtherUserConsistentType
	self assert: (CCEModel canUnderstand: (CCEMessage setOtherUser: 'testUser' consistent: true) type).