tests building
testBuildCreateSessionButtonAsEbabled
	| spec |
	
	spec := model buildCreateSessionButtonWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec).
	self assert: (model perform: spec enabled)