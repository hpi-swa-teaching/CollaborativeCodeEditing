building
buildGlobalStateDisplayWith: aBuilder
	^ OrderedCollection newFrom: { 
		self buildServerConnectionButtonWith: aBuilder . 
		self buildServerAdressFieldWith: aBuilder .
		self buildGlobalStateAccountDisplayWith: aBuilder }