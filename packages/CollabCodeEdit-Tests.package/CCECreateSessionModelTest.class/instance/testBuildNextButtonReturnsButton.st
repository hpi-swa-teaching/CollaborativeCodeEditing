tests building
testBuildNextButtonReturnsButton
	self assert: ((model buildNextButton: toolbuilder) isKindOf: PluggableButtonSpec)
	