tests ui
testCreateSessionOpensNewWindowWithCCECreateSessionAsModel
	model actionCreateSession.
	self assert: (self newMorphs anySatisfy:
				 [:morph | (morph class canUnderstand: #model)
							 ifTrue: [morph model class = CCECreateSessionModel]])