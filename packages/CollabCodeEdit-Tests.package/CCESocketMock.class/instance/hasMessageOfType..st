message
hasMessageOfType: aString
	self messages valuesDo: [:value | value type = aString ifTrue: [^ true]].
	^ false