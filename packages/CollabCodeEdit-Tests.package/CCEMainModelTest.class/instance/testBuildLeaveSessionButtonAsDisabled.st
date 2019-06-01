tests building
testBuildLeaveSessionButtonAsDisabled
	| spec |
	
	spec := model buildLeaveSessionButtonWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec).
	self deny: (model perform: spec enabled)
	