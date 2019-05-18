tests-building
testBuildWithReturnsWindow
	| spec |
	spec := model buildWith: toolbuilder.
	self assert: (spec isKindOf: SystemWindow).

	