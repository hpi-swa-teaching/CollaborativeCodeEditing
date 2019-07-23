edit selector
buildMethodEditFrom: anEvent
	(anEvent isKindOf: ModifiedEvent) ifTrue: [  ^ CCEEditBuilder buildMethodModifiedOrAddedEditFrom: anEvent ].
	(anEvent isKindOf: AddedEvent) ifTrue: [  ^ CCEEditBuilder buildMethodModifiedOrAddedEditFrom: anEvent ].
	(anEvent isKindOf: RemovedEvent) ifTrue: [  ^ CCEEditBuilder buildMethodRemovedEditFrom: anEvent ].
	(anEvent isKindOf: RecategorizedEvent) ifTrue: [  ^ CCEEditBuilder buildMethodRecategorizedEditFrom: anEvent ].
	
	^ self error: 'edit not supported'