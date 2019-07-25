capturing methods
listenForMethodChanges
	self supportedMethodChanges do: [ :changeKind |
		SystemChangeNotifier uniqueInstance 
			notify: self ofSystemChangesOfItem: #method change: changeKind 
				using: #methodEdited:]