class edits
buildClassEditFrom: anEvent
	(anEvent isKindOf: AddedEvent) ifTrue: [ ^  self buildClassAddedEditFrom: anEvent ].
	(anEvent isKindOf: CommentedEvent) ifTrue: [ ^  self buildClassCommentedEditFrom: anEvent ].
	(anEvent isKindOf: ModifiedClassDefinitionEvent) ifTrue: [ ^  self buildClassDefinitionModifiedEditFrom: anEvent ].
	(anEvent isKindOf: RecategorizedEvent) ifTrue: [ ^  self buildClassRecategorizedEditFrom: anEvent ].
	(anEvent isKindOf: RenamedEvent) ifTrue: [ ^  self buildClassRenamedEditFrom: anEvent ].
	(anEvent isKindOf: RemovedEvent) ifTrue: [ ^  self buildClassRemovedEditFrom: anEvent ].
	
	
	^ self error: 'edit not supported'