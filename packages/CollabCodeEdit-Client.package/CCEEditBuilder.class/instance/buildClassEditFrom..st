class edits
buildClassEditFrom: anEvent
	(anEvent isKindOf: ModifiedEvent) ifTrue: [  ^ self buildClassModifiedEditFrom: anEvent ].
	(anEvent isKindOf: AddedEvent) ifTrue: [  ^ self buildClassModifiedEditFrom: anEvent ].
	(anEvent isKindOf: RecategorizedEvent) ifTrue: [  ^ self buildClassModifiedEditFrom: anEvent ].
	(anEvent isKindOf: CommentedEvent) ifTrue: [  ^ self buildClassModifiedEditFrom: anEvent ].
	(anEvent isKindOf: RemovedEvent) ifTrue: [  ^ self buildClassRemovedEditFrom: anEvent ].
	(anEvent isKindOf: RenamedEvent) ifTrue: [  ^ self buildClassRenamedEditFrom: anEvent ].

	
	^ self error: 'edit not supported'