change-capturing
listenForChanges
	SystemChangeNotifier uniqueInstance 
		noMoreNotificationsFor: self;
		notify: self ofSystemChangesOfItem: #method change: #Added using: #methodAdded:	