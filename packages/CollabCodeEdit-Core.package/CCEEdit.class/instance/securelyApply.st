applying
securelyApply
	self mayBeApplied 
		ifTrue: [ self apply ]
		ifFalse: [ self error: 'CCEEdit to be applied is not in Scope']