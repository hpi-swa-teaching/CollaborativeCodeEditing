accessing
updateSelectionWith: aBrowser

	self 
	  categorySelection: aBrowser selectedSystemCategoryName;
		classSelection: aBrowser selectedClassName;
		methodSelection: aBrowser selectedMessageName.
		
	Transcript show: self methodSelection.
	self client sendMessage: (CCEMessage changeSelectionWith: self createSelectionPayload)
