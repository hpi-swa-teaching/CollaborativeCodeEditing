building
buildButtonsWith: aBuilder
	^ { self buildCreateSessionButtonWith: aBuilder .
		 self buildJoinSessionButtonWith: aBuilder .
		 self buildLeaveSessionButtonWith: aBuilder}