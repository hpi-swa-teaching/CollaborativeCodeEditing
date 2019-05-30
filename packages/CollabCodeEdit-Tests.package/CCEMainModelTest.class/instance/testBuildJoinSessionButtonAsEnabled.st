tests building
testBuildJoinSessionButtonAsEnabled
	| spec |
	spec := model buildJoinSessionButtonWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec).
	self assert: (model perform: spec enabled)
	