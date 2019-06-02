tests-building
testBuildGlobalStateDisplayReturnsCollection
	| spec |
	spec := model buildGlobalStateDisplayWith: toolbuilder.
	self assert: (spec isKindOf: Collection)