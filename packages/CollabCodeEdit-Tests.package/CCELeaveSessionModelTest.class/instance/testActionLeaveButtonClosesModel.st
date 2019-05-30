tests ui
testActionLeaveButtonClosesModel
	"model actionLeaveButton.
	self deny: (self newMorphs anySatisfy:
				 [:morph | (morph class canUnderstand: #model)
							 ifTrue: [morph model class = CCELeaveSessionModel]])"