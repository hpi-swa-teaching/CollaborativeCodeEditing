updating
updateSelectionWith: aBrowser
	self 
	  categorySelection: aBrowser selectedSystemCategoryName;
		classSelection: aBrowser selectedClassName;
		methodSelection: aBrowser selectedMessageName.
		
	self client sendMessage: (CCEMessage changeSelectionWith: self createSelectionPayload)
