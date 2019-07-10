capturing classes
listenForClassChanges
	SystemChangeNotifier uniqueInstance 
		notify: self ofSystemChangesOfItem: #class change: #Added 
			using: #classModified:;
		notify: self ofSystemChangesOfItem: #class change: #Modified 
			using: #classModified:;
		notify: self ofSystemChangesOfItem: #class change: #Commented 
			using: #classModified:;
		notify: self ofSystemChangesOfItem: #class change: #Renamed 
			using: #classRenamed:;
		notify: self ofSystemChangesOfItem: #class change: #Recategorized 
			using: #classModified:;
		notify: self ofSystemChangesOfItem: #class change: #Removed 
			using: #classRemoved: