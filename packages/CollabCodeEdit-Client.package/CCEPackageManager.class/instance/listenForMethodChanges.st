change-capturing
listenForMethodChanges
	SystemChangeNotifier uniqueInstance 
		notify: self ofSystemChangesOfItem: #method change: #Added 
			using: #methodAddedOrChanged:;
		notify: self ofSystemChangesOfItem: #method change: #Modified 
			using: #methodAddedOrChanged:;
		notify: self ofSystemChangesOfItem: #method change: #Recategorized 
			using: #methodMoved:;
		notify: self ofSystemChangesOfItem: #method change: #Removed 
			using: #methodRemoved: