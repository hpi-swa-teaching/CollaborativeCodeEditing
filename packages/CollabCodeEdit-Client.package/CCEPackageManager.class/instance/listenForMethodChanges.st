capturing methods
listenForMethodChanges
	SystemChangeNotifier uniqueInstance 
		notify: self ofSystemChangesOfItem: #method change: #Added 
			using: #methodAddedOrModified:;
		notify: self ofSystemChangesOfItem: #method change: #Modified 
			using: #methodAddedOrModified:;
		notify: self ofSystemChangesOfItem: #method change: #Recategorized 
			using: #methodMoved:;
		notify: self ofSystemChangesOfItem: #method change: #Removed 
			using: #methodRemoved: