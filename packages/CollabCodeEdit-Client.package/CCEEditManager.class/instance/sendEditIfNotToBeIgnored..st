change-capturing
sendEditIfNotToBeIgnored: aCCEEdit
	((self shouldBeIgnored: aCCEEdit) not and: [ self isInScope: aCCEEdit ])
		ifTrue: [ self client sendMessage: (CCEMessage sendEdit: aCCEEdit) ] 