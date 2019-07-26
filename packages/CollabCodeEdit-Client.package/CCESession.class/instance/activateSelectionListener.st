selection managment
activateSelectionListener
	self selectionListener currentSelection: 
		(CCESelection new 
			localAccount: self localAccount;
			client: self client;
			yourself);
		start