tests building
testBuildChildrenShouldBuildMoreThan3Buttons
	self assert: 3 < ((model buildChildrenWith: toolbuilder) size)