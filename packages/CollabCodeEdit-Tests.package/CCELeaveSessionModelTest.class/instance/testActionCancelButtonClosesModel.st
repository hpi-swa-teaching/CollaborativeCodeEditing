tests ui
testActionCancelButtonClosesModel
	model actionCancelButton.
	self deny: (self newMorphs anySatisfy:
				 [:morph | (morph class canUnderstand: #model)
							 ifTrue: [morph model class = CCELeaveSessionModel]])