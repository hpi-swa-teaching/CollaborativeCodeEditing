edit selector
methodEditKinds
	^ OrderedDictionary newFrom: {
		ModifiedEvent -> #buildMethodModifiedOrAddedEditFrom: .
		AddedEvent -> #buildMethodModifiedOrAddedEditFrom: .
		RemovedEvent -> #buildMethodRemovedEditFrom: .
		RecategorizedEvent -> #buildMethodRecategorizedEditFrom: }