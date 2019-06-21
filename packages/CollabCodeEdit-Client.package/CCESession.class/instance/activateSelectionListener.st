services
activateSelectionListener
	| cceSelection |
	
	cceSelection := CCESelection new;
		imageAccount: self imageAccount;
		client: self client.

	self selectionListener currentSelection: cceSelection;
		start.