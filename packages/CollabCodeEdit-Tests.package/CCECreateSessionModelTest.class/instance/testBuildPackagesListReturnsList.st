tests building
testBuildPackagesListReturnsList
	self assert: ((model buildPackagesList: toolbuilder) isKindOf: PluggableListSpec)
	