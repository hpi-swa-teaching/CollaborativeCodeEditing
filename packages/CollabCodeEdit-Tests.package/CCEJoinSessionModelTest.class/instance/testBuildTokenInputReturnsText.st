tests building
testBuildTokenInputReturnsText
	self assert: ((model buildTokenInputField: toolbuilder) isKindOf: PluggableTextSpec)
	