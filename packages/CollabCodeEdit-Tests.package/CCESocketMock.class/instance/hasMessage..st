testing
hasMessage: aMessage
	self messages keysDo: [:key | key = aMessage ifTrue: [^ true]].
	^ false