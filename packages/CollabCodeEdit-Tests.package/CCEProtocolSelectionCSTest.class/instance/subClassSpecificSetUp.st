running
subClassSpecificSetUp
	cceSelection := CCESelection new client: client; imageAccount: imageAccount.
	browser := Browser new
		selectCategoryForClass: CCESelection; 
		selectClass: #CCESelection;
		selectMessageNamed: #categorySelection.
		