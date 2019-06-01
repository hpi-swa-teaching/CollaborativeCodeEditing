tests backend
testSessionCtrlButtonsAreSetAfterBuildingButtons
	| testModel | 
	
	testModel := CCEModel new.
	self assert: testModel sessionCtrlButtons isNil.
	
	testModel buildButtonsWith: toolbuilder.
	
	self deny: testModel sessionCtrlButtons isNil