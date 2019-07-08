capturing methods
listenForMethodChanges
	SystemChangeNotifier uniqueInstance 
		notify: self ofSystemChangesOfItem: #method change: #Added 
			using: #methodEdited:;
		notify: self ofSystemChangesOfItem: #method change: #Modified 
			using: #methodEdited:;
		notify: self ofSystemChangesOfItem: #method change: #Recategorized 
			using: #methodEdited:;
		notify: self ofSystemChangesOfItem: #method change: #Removed 
			using: #methodEdited: