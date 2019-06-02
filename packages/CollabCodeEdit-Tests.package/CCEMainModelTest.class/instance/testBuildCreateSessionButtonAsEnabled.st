tests building
testBuildCreateSessionButtonAsEnabled
	| spec |
	
	spec := model buildCreateSessionButtonWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec).
	self assert: (model perform: spec enabled)