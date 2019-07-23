edit selector
buildClassEditFrom: anEvent
	(anEvent isKindOf: ModifiedEvent) ifTrue: [  ^ CCEEditBuilder buildClassModifiedOrAddedEditFrom: anEvent ].
	(anEvent isKindOf: AddedEvent) ifTrue: [  ^ CCEEditBuilder buildClassModifiedOrAddedEditFrom: anEvent ].
	(anEvent isKindOf: RecategorizedEvent) ifTrue: [  ^ CCEEditBuilder buildClassModifiedOrAddedEditFrom: anEvent ].
	(anEvent isKindOf: CommentedEvent) ifTrue: [  ^ CCEEditBuilder buildClassModifiedOrAddedEditFrom: anEvent ].
	(anEvent isKindOf: RemovedEvent) ifTrue: [  ^ CCEEditBuilder buildClassRemovedEditFrom: anEvent ].
	(anEvent isKindOf: RenamedEvent) ifTrue: [  ^ CCEEditBuilder buildClassRenamedEditFrom: anEvent ].

	
	^ self error: 'edit not supported'