tests
testButtonWithLabelShouldReturnAPluggableButtonSpec
	self assert: ((model buttonWithLabel: CCEModel createButtonLabel) isKindOf: PluggableButtonSpec)