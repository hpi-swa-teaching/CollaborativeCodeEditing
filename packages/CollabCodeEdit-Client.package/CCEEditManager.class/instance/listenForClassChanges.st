capturing classes
listenForClassChanges
	self supportedClassChanges do: [ :changeKind |
		SystemChangeNotifier uniqueInstance 
			notify: self ofSystemChangesOfItem: #class change: changeKind 
				using: #classEdited: ]