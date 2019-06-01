tests building
testBuildSessionScopeDisplayWithCCESessionAsModel
	| spec |
	
	spec := model buildSessionScopeDisplayWith: toolbuilder.
	self assert: (spec isKindOf: ToolBuilderSpec).
	self assert: (spec model == CCESession default).
	self assert: (CCESession canUnderstand: spec list)
	