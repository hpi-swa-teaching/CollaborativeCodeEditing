change-capturing
listenForChanges
	SystemChangeNotifier uniqueInstance 
		noMoreNotificationsFor: self;
		notify: self ofSystemChangesOfItem: #method change: #Added using: #methodAdded:;
		notify: self ofSystemChangesOfItem: #method change: #Modified using: #methodAdded:;
		notify: self ofSystemChangesOfItem: #method change: #Recategorized 
			using: #methodMoved: