edit selector
buildEditFrom: anEvent accordingTo: aDictionary
	aDictionary keysAndValuesDo: [ :eventKind :editConstructor |
		(anEvent isKindOf: eventKind) ifTrue: [
			^ CCEEditBuilder perform: editConstructor with: anEvent ] ].
	
	^ self error: 'Edit not supported'