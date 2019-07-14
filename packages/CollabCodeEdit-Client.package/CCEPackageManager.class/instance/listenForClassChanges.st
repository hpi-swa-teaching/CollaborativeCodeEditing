capturing classes
listenForClassChanges
	SystemChangeNotifier uniqueInstance 
		notify: self ofSystemChangesOfItem: #class change: #Added 
			using: #classEdited:;
		notify: self ofSystemChangesOfItem: #class change: #Modified 
			using: #classEdited:;
		notify: self ofSystemChangesOfItem: #class change: #Commented 
			using: #classEdited:;
		notify: self ofSystemChangesOfItem: #class change: #Renamed 
			using: #classEdited:;
		notify: self ofSystemChangesOfItem: #class change: #Recategorized 
			using: #classEdited:;
		notify: self ofSystemChangesOfItem: #class change: #Removed 
			using: #classEdited: