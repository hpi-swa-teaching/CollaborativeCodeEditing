tests-building
testBuildJoinSessionButtonAsEnabled
	| spec |
	spec := model buildJoinSessionButtonWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec).
	self assert: (spec enabled)
	