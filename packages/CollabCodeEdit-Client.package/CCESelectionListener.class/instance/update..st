stepping
update: anObject 
	(anObject isKindOf: Browser) ifFalse: [^ self].
	self currentSelection updateSelectionWith: anObject