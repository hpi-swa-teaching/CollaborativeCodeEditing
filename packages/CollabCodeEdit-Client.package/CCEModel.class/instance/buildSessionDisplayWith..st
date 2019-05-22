building
buildSessionDisplayWith: aBuilder
	^ OrderedCollection newFrom:{ self buildSessionScopeDisplayWith: aBuilder .
		 self buildSessionTokenDisplayWith: aBuilder}