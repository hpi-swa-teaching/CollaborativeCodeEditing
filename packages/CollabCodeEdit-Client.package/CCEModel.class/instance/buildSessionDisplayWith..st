building
buildSessionDisplayWith: aBuilder
	^ OrderedCollection newFrom:{ 
		self buildSessionScopeDisplayWith: aBuilder .
		self buildSessionCollaboratorsDisplayWith: aBuilder .
		self buildSessionTokenDisplayWith: aBuilder}