method edits
buildMethodEditFrom: anEvent
	(anEvent isKindOf: ModifiedEvent) ifTrue: [  ^ self buildMethodModifiedOrAddedEditFrom: anEvent ].
	(anEvent isKindOf: AddedEvent) ifTrue: [  ^ self buildMethodModifiedOrAddedEditFrom: anEvent ].
	(anEvent isKindOf: RemovedEvent) ifTrue: [  ^ self buildMethodRemovedEditFrom: anEvent ].
	(anEvent isKindOf: RecategorizedEvent) ifTrue: [  ^ self buildMethodRecategorizedEditFrom: anEvent ].
	
	^ self error: 'edit not supported'