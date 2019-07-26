edit selector
classEditKinds
	^ OrderedDictionary newFrom: {
			ModifiedEvent -> #buildClassModifiedOrAddedEditFrom: .
			AddedEvent	 -> #buildClassModifiedOrAddedEditFrom: .
			RecategorizedEvent -> #buildClassModifiedOrAddedEditFrom: .
			CommentedEvent	-> #buildClassModifiedOrAddedEditFrom: .
			RemovedEvent	-> #buildClassRemovedEditFrom: .
			RenamedEvent -> #buildClassRenamedEditFrom: }