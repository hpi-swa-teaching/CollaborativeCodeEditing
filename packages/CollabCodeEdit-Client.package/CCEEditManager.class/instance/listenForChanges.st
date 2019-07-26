change-capturing
listenForChanges
	self 
		stopListeningForChanges;
		listenForMethodChanges;
		listenForClassChanges