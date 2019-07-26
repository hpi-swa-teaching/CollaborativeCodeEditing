accessing
collaborators
	^ collaborators ifNil: [ self collaborators: OrderedDictionary new ]