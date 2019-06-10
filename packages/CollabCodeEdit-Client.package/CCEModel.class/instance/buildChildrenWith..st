building
buildChildrenWith: aBuilder
	| allChildren | 
	allChildren := self buildButtonsWith: aBuilder.
	allChildren addAll: (self buildSessionDisplayWith: aBuilder).
	allChildren addAll: (self buildGlobalStateDisplayWith: aBuilder).
	
	^ allChildren