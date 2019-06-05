tests ui
testBuildGlobalStateDisplayReturnsCollection
	| spec |
	spec := model buildGlobalStateDisplayWith: toolbuilder.
	self assert: (spec isKindOf: Collection)