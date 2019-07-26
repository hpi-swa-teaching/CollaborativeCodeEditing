tests building
testBuildCreateSessionButtonAsDisabled
	| spec |
	
	spec := model buildCreateSessionButtonWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec).
	self deny: (model perform: spec enabled)