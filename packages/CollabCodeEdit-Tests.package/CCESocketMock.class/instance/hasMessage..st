message
hasMessage: aString
	self messages keysDo: [:key | key = aString ifTrue: [^ true]].
	^ false