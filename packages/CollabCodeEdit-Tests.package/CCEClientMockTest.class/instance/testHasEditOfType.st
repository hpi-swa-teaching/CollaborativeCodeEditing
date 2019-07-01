tests
testHasEditOfType
	clientMock sendMessage: 
		(CCEMessage sendEdit: 
			(CCEMethodAddedOrModifiedEdit newWith: #testMethod in: CCETestDummy)).
			
	self assert: (clientMock hasEditOfType: CCEMethodAddedOrModifiedEdit).
	self deny: (clientMock hasEditOfType: CCEMethodRecategorizedEdit) 
	