edit selector
buildClassEditFrom: anEvent
	(anEvent isKindOf: ModifiedEvent) ifTrue: [  ^ self buildClassModifiedOrAddedEditFrom: anEvent ].
	(anEvent isKindOf: AddedEvent) ifTrue: [  ^ self buildClassModifiedOrAddedEditFrom: anEvent ].
	(anEvent isKindOf: RecategorizedEvent) ifTrue: [  ^ self buildClassModifiedOrAddedEditFrom: anEvent ].
	(anEvent isKindOf: CommentedEvent) ifTrue: [  ^ self buildClassModifiedOrAddedEditFrom: anEvent ].
	(anEvent isKindOf: RemovedEvent) ifTrue: [  ^ self buildClassRemovedEditFrom: anEvent ].
	(anEvent isKindOf: RenamedEvent) ifTrue: [  ^ self buildClassRenamedEditFrom: anEvent ].

	
	^ self error: 'edit not supported'