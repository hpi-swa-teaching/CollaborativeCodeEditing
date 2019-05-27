tests ui
testLeaveSessionOpensNewWindowWithCCELeaveSessionAsModel
	model actionLeaveSession.
	self assert: (self newMorphs anySatisfy:
				 [:morph | (morph class canUnderstand: #model)
							 ifTrue: [morph model class = CCELeaveSessionModel]])