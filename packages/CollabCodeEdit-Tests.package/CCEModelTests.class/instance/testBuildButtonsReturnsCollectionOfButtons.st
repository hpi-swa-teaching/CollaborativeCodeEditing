tests-building
testBuildButtonsReturnsCollectionOfButtons
	| spec |
	spec := model buildButtonsWith: toolbuilder.
	self assert: (spec isKindOf: Collection).

	