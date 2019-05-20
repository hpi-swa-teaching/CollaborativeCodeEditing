building
buildButtonsWith: aBuilder
	^ OrderedCollection newFrom: { self buildCreateSessionButtonWith: aBuilder .
		 self buildJoinSessionButtonWith: aBuilder .
		 self buildLeaveSessionButtonWith: aBuilder}