tests-building
testBuildGlobalStateAccountDisplayWithCCEAccountAsModel
	| spec |
	spec := model buildGlobalStateAccountDisplayWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec).
	self assert: (spec model == CCEAccount default)
	