tests building
testBuildSessionDisplayReturnsCollection
	| spec |
	spec := model buildSessionDisplayWith: toolbuilder.
	self assert: (spec isKindOf: Collection).

	