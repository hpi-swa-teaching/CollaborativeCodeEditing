change-capturing
listenForMethodChanges
	SystemChangeNotifier uniqueInstance 
		notify: self ofSystemChangesOfItem: #method change: #Added using: #methodAdded:;
		notify: self ofSystemChangesOfItem: #method change: #Modified using: #methodAdded:;
		notify: self ofSystemChangesOfItem: #method change: #Recategorized 
			using: #methodMoved:;
		notify: self ofSystemChangesOfItem: #method change: #Removed 
			using: #methodRemoved: