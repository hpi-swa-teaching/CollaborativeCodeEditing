building
buildGlobalStateDisplayWith: aBuilder
	^ OrderedCollection newFrom:{ self buildGlobalStateAccountDisplayWith: aBuilder}