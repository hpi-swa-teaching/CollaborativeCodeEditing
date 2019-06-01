tests building
testBuildSessionTokenDisplayWithCCESessionAsModel
	| spec |
	
	spec := model buildSessionTokenDisplayWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec).
	self assert: (spec model == CCESession default).
	self assert: (CCESession canUnderstand: spec getText)
	