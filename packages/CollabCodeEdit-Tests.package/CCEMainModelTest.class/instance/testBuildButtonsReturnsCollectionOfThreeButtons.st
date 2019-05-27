tests building
testBuildButtonsReturnsCollectionOfThreeButtons
	| collection |
	collection := model buildButtonsWith: toolbuilder.
	self assert: (collection isKindOf: Collection).
	self assert: collection size = 3

	