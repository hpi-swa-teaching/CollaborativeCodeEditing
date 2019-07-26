building
buildButtonsWith: aBuilder
	| buttons | 
	
	buttons := OrderedCollection newFrom: { 
		self buildCreateSessionButtonWith: aBuilder .
		self buildJoinSessionButtonWith: aBuilder .
		self buildLeaveSessionButtonWith: aBuilder }.
			
	self sessionCtrlButtons: buttons clone.
	
	^ buttons