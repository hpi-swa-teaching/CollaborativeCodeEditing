tests building
testBuildProceedButtonAndCancelButtonWithReturnButtons
	self assert: ((model buildLeaveButtonWith: toolbuilder) isKindOf: PluggableButtonSpec).
	self assert: ((model buildCancelButtonWith: toolbuilder) isKindOf: PluggableButtonSpec)