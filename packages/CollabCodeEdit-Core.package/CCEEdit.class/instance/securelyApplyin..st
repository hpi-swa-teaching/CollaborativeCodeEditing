applying
securelyApplyin: aCCESession
	(self mayBeAppliedIn: aCCESession)
		ifTrue: [ self apply ]
		ifFalse: [ self error: 'CCEEdit to be applied is not in Scope']