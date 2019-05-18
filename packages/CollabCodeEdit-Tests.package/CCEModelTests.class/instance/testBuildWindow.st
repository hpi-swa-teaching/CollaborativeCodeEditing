tests-building
testBuildWindow
	| spec |
	spec := model buildWith: toolbuilder.
	self assert: (spec isKindOf: SystemWindow).

	