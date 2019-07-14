stepping
update: aBrowser 
	(aBrowser isKindOf: Browser) ifFalse: [^ self].
	self currentSelection updateSelectionWith: aBrowser