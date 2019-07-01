building
buildGlobalStateDisplayWith: aBuilder
	^ OrderedCollection newFrom:{ 
		self buildServerConnectionButtonWith: aBuilder . 
		self buildGlobalStateAccountDisplayWith: aBuilder }