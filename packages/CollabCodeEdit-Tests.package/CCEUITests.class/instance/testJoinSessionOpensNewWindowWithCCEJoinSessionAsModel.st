tests
testJoinSessionOpensNewWindowWithCCEJoinSessionAsModel
	model actionJoinSession.
	self assert: (self newMorphs anySatisfy:
				 [:morph | (morph class canUnderstand: #model)
							 ifTrue: [morph model class = CCEJoinSessionModel]])