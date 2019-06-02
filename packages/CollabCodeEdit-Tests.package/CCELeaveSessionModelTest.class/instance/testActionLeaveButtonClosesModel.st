tests ui
testActionLeaveButtonClosesModel
	self flag: #CCE. "Should that be deleted?"
	"model actionLeaveButton.
	self deny: (self newMorphs anySatisfy:
				 [:morph | (morph class canUnderstand: #model)
							 ifTrue: [morph model class = CCELeaveSessionModel]])"