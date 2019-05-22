tests-building
testBuildCreateSessionButtonAsEbabled
	| spec |
	spec := model buildCreateSessionButtonWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec).
	self assert: (spec enabled)
	