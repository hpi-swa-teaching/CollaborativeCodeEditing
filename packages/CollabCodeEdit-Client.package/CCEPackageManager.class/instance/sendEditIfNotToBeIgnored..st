as yet unclassified
sendEditIfNotToBeIgnored: aCCEEdit
	((self shouldBeIgnored: aCCEEdit) not and: [ self isInScope: aCCEEdit classToEdit ])
		ifTrue: [ self client sendMessage: (CCEMessage sendEdit: aCCEEdit) ] 