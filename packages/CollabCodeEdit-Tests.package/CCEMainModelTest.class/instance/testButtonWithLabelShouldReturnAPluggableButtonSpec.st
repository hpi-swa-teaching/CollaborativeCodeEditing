tests backend
testButtonWithLabelShouldReturnAPluggableButtonSpec
	self assert: ((model buttonWithLabel: CCEModel createButtonLabel) isKindOf: PluggableButtonSpec)